<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('timetables', function (Blueprint $table) {
			$table->id();
			$table->unsignedBigInteger('exam_id');
			
            $table->string('paper_code');
			$table->string('name');
			$table->dateTime('start_time', precision: 0);
			$table->dateTime('end_time', precision: 0);
			$table->string('remarks')->nullable();
			
			
			
			
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('timetables');
    }
};
