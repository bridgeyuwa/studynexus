# Builder Stage: Install dependencies and build artifacts
FROM php:8.4-fpm AS builder

# Set working directory
WORKDIR /var/www/html

# Install system dependencies + useful tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    git unzip libzip-dev libpng-dev libjpeg-dev libfreetype6-dev libonig-dev libxml2-dev \
    libicu-dev zip curl g++ libxslt-dev pkg-config libssl-dev bash passwd \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) pdo_mysql mbstring zip exif pcntl bcmath gd opcache xml intl xsl \
    && pecl install redis && docker-php-ext-enable redis \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /usr/share/man/*

# Copy Composer from official lightweight image
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Create non-root user early - ensure consistent UID/GID
ARG UID=1000
ARG GID=1000
RUN usermod -u $UID www-data && groupmod -g $GID www-data || true

# Copy composer files first for better layer caching
COPY --chown=www-data:www-data composer.json composer.lock ./

# Install production dependencies only
RUN composer install \
    --no-dev \
    --prefer-dist \
    --no-progress \
    --no-suggest \
    --optimize-autoloader \
    --no-interaction \
    --no-scripts \
    && composer clear-cache

# Copy application code
COPY --chown=www-data:www-data . .

# Generate optimized autoloader
RUN composer dump-autoload --optimize

# Laravel-specific directories & permissions
RUN mkdir -p storage/logs storage/framework/{cache,sessions,views} bootstrap/cache \
    && chmod -R 775 storage bootstrap/cache \
    && chown -R www-data:www-data storage bootstrap/cache

# Runtime Stage: Slim production image
FROM php:8.4-fpm AS runtime

# Set working directory
WORKDIR /var/www/html

# Install minimal runtime deps (subset of builder's)
RUN apt-get update && apt-get install -y --no-install-recommends \
    libzip4 libpng16-16 libjpeg62-turbo libfreetype6 libonig5 libxml2 libicu72 libxslt1.1 openssl curl passwd \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) pdo_mysql mbstring zip exif pcntl bcmath gd opcache xml intl xsl \
    && pecl install redis && docker-php-ext-enable redis \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /usr/share/man/*

# Copy built artifacts from builder
COPY --from=builder --chown=www-data:www-data /var/www/html /var/www/html

# Ensure consistent UID/GID (copied from builder implicitly, but re-apply if needed)
ARG UID=1000
ARG GID=1000
RUN usermod -u $UID www-data && groupmod -g $GID www-data || true

# Optional: Copy custom configs
# COPY docker/php-fpm.d/www.conf /usr/local/etc/php-fpm.d/www.conf
# COPY docker/php/conf.d/*.ini /usr/local/etc/php/conf.d/

# Switch to non-root user
USER www-data

# Healthcheck: Ping PHP-FPM directly (no app endpoint needed)
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD ["php-fpm", "-t"] || exit 1

# Expose port
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]