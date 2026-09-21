---
corpus_id: COR-TECH-002
document_kind: SOURCE_RECONSTRUCTION
title: "Historical Domain, DDD and Aggregate Design"
category: technical-and-architecture
subcategory: ddd-history
status: HISTORICAL
authority: TECHNICAL_HISTORY
temporal_scope: HISTORICAL
source_count: 25
sources:
  - SRC-0494
  - SRC-0495
  - SRC-0497
  - SRC-0498
  - SRC-0499
  - SRC-0500
  - SRC-0501
  - SRC-0502
  - SRC-0505
  - SRC-0512
  - SRC-0514
  - SRC-0515
  - SRC-0523
  - SRC-0528
  - SRC-0016
  - SRC-0017
  - SRC-0093
  - SRC-0094
  - SRC-0096
  - SRC-0128
  - SRC-0184
  - SRC-0185
  - SRC-0286
  - SRC-0287
  - SRC-0300
related_resolutions:
  - R012
  - R016
related_open_questions:
  - NONE
---

# Historical Domain, DDD and Aggregate Design

**Purpose.** Preserves historical DDD/domain work as design history; it must not override accepted Product Discovery or pre-empt future DDD.

## Authority and current status

**Historical technical material only.** This dossier records prior design/implementation work. It is not a current technical architecture decision and must not pre-empt the future Product Language → DDD → architecture sequence.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP003 — Institution Information**: Present structured, trustworthy institution identity, location, status and other decision-relevant information. _Scope: MVP — defined; strategic status: IN._
- **CAP021 — Internship Information / Discovery**: Help users discover and understand internship/practical-experience opportunities relevant to education/career journeys. _Scope: MVP — underspecified; strategic status: IN._
- **CAP022 — Community/User-Contributed Information Input**: Accept user reports or contributions as evidence/candidate input to information-quality processes. _Scope: MVP — defined; strategic status: IN._
- **CAP023 — Public Accounts / Persistent Identity**: Provide persistent user identity only where it supports valuable persistent/personal capabilities while preserving anonymous core discovery/search/comparison. _Scope: MVP — boundary requires refinement; strategic status: IN._
- **CAP024 — Personalization**: Adapt information/guidance to user context or persistent preferences without making personalization mandatory for core use. _Scope: MVP — underspecified; strategic status: IN._

### Related canonical product concepts

- **CON002 — Institution**: A recognized educational institution represented in StudyNexus. Institution identity is distinct from arbitrary related organizations and from a campus/location.
- **CON024 — Education Authority / Regulator**: An external body whose authoritative decisions, registers or rules establish educational status, approval, accreditation, admission policy context or other regulated facts.
- **CON052 — Internship Opportunity**: Information about internship or practical-work opportunities relevant to learners' education/career journey.
- **CON053 — Public Account / Persistent Identity**: A persistent user identity that can support saved state or personal capabilities. It is not required for anonymous core discovery/search/comparison, but under the current MVP-default rule remains in MVP consideration.
- **CON058 — Organization (potential shared abstraction)**: A possible umbrella abstraction for non-person actors such as regulators, exam bodies, scholarship providers, publishers or service providers. It is not an accepted universal StudyNexus product concept.

### Relevant current resolutions

- **R012**: Yes, they remain in current MVP consideration under the present scope rule because no current explicit exclusion removes them. However, anonymous core discovery must remain usable without an account; persistent identity, personalization and notification minimums are underspecified and need only be introduced where persistent user value requires them.
- **R016**: Do not canonize a universal Organization product concept. Use concrete actor roles and leave shared identity modeling to later evidence/DDD if a real cross-role business responsibility emerges.

## Historical evolution and source evidence

### SRC-0494 — StudyNexus — Domain Discovery Consolidation & Pre-Behaviour Freeze

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/13-domain-discovery-consolidation.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Status: Pre-Behaviour Readiness Assessment Scope: Final consolidation of Topics 1–3, Architectural Review, Domain Integrity Review, and Domain Resolution Analysis Objective: Actively challenge the current domain model. Do NOT simply summarize previous documents. Identify every remaining weakness, validate every boundary, and confirm readi Key sections: 1. Canonical Entity Register; Challenge: Are all 12 entities justified? Should any be promoted, demoted, or removed?; Consolidated Entity Register; 2. Canonical Value Object Register; Challenge: Are all 27 VOs justified? Should any be promoted to entities or removed?; Rejected Value Objects (Confirmed Rejections).

### SRC-0495 — StudyNexus — Architectural Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/14-architectural-review-global-domain.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Purpose: Identify and correct every place where the current domain model is unnecessarily Nigeria-specific or implementation-driven, per the four architectural constraints 1. Domain First — Discover from the educational domain, not from Laravel Beyond CRUD. Laravel Beyond CRUD constrains implementation, not domain discovery. When multiple Key sections: Architectural Constraints (Stated for Reference); Findings; F1: "Government Education Agency" — Nigeria-Specific Entity Name; F2: INV-I2 / INV-P5 — Nigeria-Specific Accreditation Type Mapping; F3: INV-2 (Original Topic 2) — "Granted by exactly one Government Education Agency"; F4: INV-9 — Nigeria-Scoped Qualification Recognition.

### SRC-0497 — StudyNexus — Domain Discovery: Topic 3

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/16-domain-discovery-topic3.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Prerequisite: Topic 1 (Core Domain Entities) — Approved with amendments; Topic 2 Revision (Aggregate Boundaries) — Approved; Architectural Review (14-architectural-review-global-domain.md) — Approved Business Discovery Status: Frozen (immutable) The following revisions from the architectural review (Findings F1–F14) are applied throughout Key sections: Architectural Review Revisions Applied; Post-Revision Domain Model (Foundation); Aggregate Roots (5); Child Entity Types (3); Supporting Entities (3); Key Invariants (Revised Wording).

### SRC-0498 — StudyNexus — Domain Integrity Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/17-domain-integrity-review.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Reviewer Role: Senior Domain Architect — Critical Design Review Objective: Break the model. Challenge every important decision. Do not defend the status quo. Scope: All domain entities, value objects, relationships, invariants, and assumptions from Topics 1–3, post-architectural-review revisions Authority Order: Business Discovery → Topic Key sections: 1. Executive Assessment; 2. Strengths; S1: Pragmatic Aggregate Boundaries; S2: Jurisdiction-Based Invariant Generalization; S3: Authority-Scoped Identity; S4: Derived Attribute Discipline.

### SRC-0499 — Executive Summary

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/18-domain-resolution-analysis.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Stabilization of Domain Foundation Post-Integrity Review Authority: Business Discovery (frozen) > Domain Discovery Topics 1–3 > Architectural Review > Domain Integrity Review This document resolves all 11 findings from the Domain Integrity Review against the canonical Business Discovery and existing Domain Discovery Topics 1–3. Each findi Key sections: Integrity Review Claim; Multi-Country Semantic Test; Nigeria; United Kingdom; United States; Germany.

### SRC-0500 — StudyNexus — Domain Architecture

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/19-domain-architecture.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Prerequisite: Domain Discovery Topics 1–4 (complete and reviewed), Consolidation (13), Behaviour Discovery (14) Architectural Philosophy: Laravel Beyond CRUD (Brent Roose & Freek Van der Herten) — Pragmatic Domain-Driven Design Stack: TALL (Laravel + Blade + Livewire + Flux + Tailwind CSS) + Filament (Admin) Objective: Translate the disco Key sections: 1. Architectural Principles; P1: Domain Accuracy Over Theoretical Purity; P2: Pragmatic Laravel Idioms; P3: Invariant Protection at Aggregate Boundaries; P4: Separate Domain from Application from Presentation; P5: Global-First, Nigeria-First-Dataset.

### SRC-0501 — StudyNexus — Domain Architecture Validation & ADR Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/20-domain-architecture-validation.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Subject: StudyNexus Domain Architecture v1.0 Method: Adversarial review — every claim is challenged, every decision is pressure-tested, every omission is surfaced. Verdict: READY WITH CONDITIONS — 4 must-fix corrections required before implementation This document applies an adversarial validation method to the StudyNexus Domain Architect Key sections: 1. Review Method; Validation Framework; Review Scope; Notation; 2. Laravel Beyond CRUD Validation; LBC Core Principles vs StudyNexus Implementation.

### SRC-0502 — StudyNexus — Final Frozen Architectural Baseline

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/21-domain-architecture-frozen-baseline.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Prerequisite: Domain Architecture (18), Domain Architecture Validation & ADR Review (19) Architectural Philosophy: Laravel Beyond CRUD (Brent Roose & Freek Van der Herten) — Pragmatic Domain-Driven Design Stack: TALL (Laravel + Blade + Livewire + Flux + Tailwind CSS) + Filament (Admin) Verdict: FROZEN WITH DOCUMENTED DEFERMENTS Objective: Key sections: 1. Correction Application Record; F1 — Namespace Inconsistency: RESOLVED; F2 — Ceremonial DomainEvent Interface: RESOLVED (Removed); F3 — ReassignProgramme: RESOLVED (Removed from Actions); F4 — Action Justification Inconsistency: RESOLVED; Correction Summary.

### SRC-0505 — Document 23: Final Platform and Capability Architecture

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/24-final-platform-and-capability-architecture.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** StudyNexus — Final Pre-Implementation Architecture Audit 3. Current Frozen Architecture Preservation 4. StudyNexus as Broad Education Platform 7. Content + Domain Entity Relationships 9. Programme Identity and Institution-Scoped Pages 10. Institution Information Architecture 11. Typesense + SEO Architecture (Final Review) 16. Social Shari Key sections: Table of Contents; 1. Executive Summary; 2. Architectural Principles; 3. Current Frozen Architecture Preservation; 3.1 Aggregate Roots (5) — UNCHANGED; 3.2 Child Entities (3) — UNCHANGED.

### SRC-0512 — StudyNexus — Final Pre-Pruning Verification Report

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/VERIFICATION-REPORT.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Status: VERIFICATION ONLY — No files modified Documents analyzed: 28 (in /home/z/my-project/download/studynexus-reconciled/) Reconciliation proposal: 00-reconciliation-proposal.md - Purpose: Single-entry business context — the "why" and "who" of StudyNexus - Authoritative scope: Business intent, persona definitions, capability definitions Key sections: Canonical Document Specifications; 01-business.md; 02-decisions.md; 03-domain.md; 04-architecture.md; 05-implementation.md.

### SRC-0514 — StudyNexus — Decisions & Architecture Decision Records

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/02-decisions.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-007
- **Contribution:** This document is the canonical consolidation of all approved business decisions, architecture decision records, resolved open questions, rejected alternatives, and the change proposal protocol governing modifications to frozen artifacts. It supersedes all prior per-document decision fragments and serves as the single source of truth for w Key sections: 1. Business Discovery Decisions; 1.1 Identity & Vision (A0); 1.2 Primary Users (A1); 1.3 Secondary Users & Architecture Principles (A2); 1.4 Problem Space (A3); 1.5 Strategic Evolution (A4).

### SRC-0515 — StudyNexus -- Domain Model

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/03-domain.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-008
- **Contribution:** Sources: 13-domain-discovery-consolidation.md, 15-domain-discovery-topic4-behaviour.md, 16-domain-discovery-topic3.md, 12-domain-discovery-topic2-revision.md, 14-architectural-review-global-domain.md, 21-domain-architecture-frozen-baseline.md Architecture: Laravel Beyond CRUD (Brent Roose & Freek Van der Herten) -- Pragmatic Domain-Driven Key sections: 1. Domain Principles; 2. Entity Register (13); Aggregate Roots (5); Child Entities (4); Supporting Entities (4); 3. Value Objects (29).

### SRC-0523 — StudyNexus — Canonical Update Report

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-UPDATE-REPORT.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-014
- **Contribution:** Authority: Approved discovery closure (DISCOVERY-CLOSURE.md) — 12 canonical changes Scope: Canonical correction only — no new decisions, no architecture redesign, no code Documents NOT modified: 01-business.md, 02-decisions.md, 06-data-acquisition.md The handoff contract is implementation-neutral. It defines the information StudyNexus nee Key sections: 1. The 12 Changes Applied; 2. Documents Affected; 3. Cross-References Updated; 4. Final Canonical Counts; 5. Final Platform Versions; 6. Final Product Scope.

### SRC-0528 — Foundational Decisions Brief

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FOUNDATIONAL-DECISIONS-BRIEF.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-018
- **Contribution:** Date: 2026-08-10 (V4.6 supersession note: 2026-08-19) Scope: Six foundational decisions that must be resolved before any reconciliation can be executed Status: ANALYSIS COMPLETE — awaiting human resolution of all six decisions Constraint: No canonical documents modified. No baseline modified. No code. No migrations. No reconciliation exec Key sections: Decision Inventory; 1. Current Evidence; Where UUID is mentioned and what it is used for; Where bigint is mentioned; Where PK type is unstated; Slug usage.

### SRC-0016 — StudyNexus — Decisions & Architecture Decision Records

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/02-decisions.md`
- **Period/version:** 2026-08-07
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-007
- **Contribution:** This document is the canonical consolidation of all approved business decisions, architecture decision records, resolved open questions, rejected alternatives, and the change proposal protocol governing modifications to frozen artifacts. It supersedes all prior per-document decision fragments and serves as the single source of truth for w Key sections: 1. Business Discovery Decisions; 1.1 Identity & Vision (A0); 1.2 Primary Users (A1); 1.3 Secondary Users & Architecture Principles (A2); 1.4 Problem Space (A3); 1.5 Strategic Evolution (A4).

### SRC-0017 — StudyNexus -- Domain Model

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/03-domain.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-008
- **Contribution:** Sources: 13-domain-discovery-consolidation.md, 15-domain-discovery-topic4-behaviour.md, 16-domain-discovery-topic3.md, 12-domain-discovery-topic2-revision.md, 14-architectural-review-global-domain.md, 21-domain-architecture-frozen-baseline.md Architecture: Laravel Beyond CRUD (Brent Roose & Freek Van der Herten) -- Pragmatic Domain-Driven Key sections: 1. Domain Principles; 2. Entity Register (11); Aggregate Roots (5); Child Entities (3); Supporting Entities (3); 3. Value Objects (28).

### SRC-0093 — StudyNexus — Decisions & Architecture Decision Records

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/02-decisions.md`
- **Period/version:** 2026-08-07
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-007
- **Contribution:** This document is the canonical consolidation of all approved business decisions, architecture decision records, resolved open questions, rejected alternatives, and the change proposal protocol governing modifications to frozen artifacts. It supersedes all prior per-document decision fragments and serves as the single source of truth for w Key sections: 1. Business Discovery Decisions; 1.1 Identity & Vision (A0); 1.2 Primary Users (A1); 1.3 Secondary Users & Architecture Principles (A2); 1.4 Problem Space (A3); 1.5 Strategic Evolution (A4).

### SRC-0094 — StudyNexus -- Domain Model

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/03-domain.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-008
- **Contribution:** Sources: 13-domain-discovery-consolidation.md, 15-domain-discovery-topic4-behaviour.md, 16-domain-discovery-topic3.md, 12-domain-discovery-topic2-revision.md, 14-architectural-review-global-domain.md, 21-domain-architecture-frozen-baseline.md Architecture: Laravel Beyond CRUD (Brent Roose & Freek Van der Herten) -- Pragmatic Domain-Driven Key sections: 1. Domain Principles; 2. Entity Register (13); Aggregate Roots (5); Child Entities (4); Supporting Entities (4); 3. Value Objects (29).

### SRC-0096 — StudyNexus -- Implementation Blueprint

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/05-implementation.md`
- **Period/version:** 2026-08-08
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-010
- **Contribution:** The platform baseline is non-negotiable. Every package, every migration, every code decision is evaluated against this baseline. There is no Laravel 12 fallback, no PHP 8.3 fallback, no Filament v3 fallback, and no Livewire v3 fallback. The implementation targets Laravel 13 because starting a new project on the current framework major avo Key sections: 1. Platform Baseline; 1.1 Core Stack; 1.2 Frontend Stack (TALL); 1.3 Admin Stack; 1.4 Auth and Testing; 1.5 Version Rationale.

### SRC-0128 — StudyNexus Pre-Implementation Baseline — Final Verdict

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/05-PRODUCT-STRATEGY/MERGED-AUDIT-OF-STUDYNEXUS-PLAN.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** The baseline contains 7 CRITICAL contradictions, 14 HIGH contradictions, and 18 MEDIUM contradictions, almost all between 03-domain.md (the canonical domain model) and 05-implementation.md (the canonical implementation blueprint). These two documents describe materially different domain models — different enum values, different Action lis Key sections: Q1: Is the baseline internally consistent?; Q2: Is the domain model sufficiently defined?; Q3: Are the major business rules sufficiently defined?; Q4: Is the data authority/source-of-truth model clear?; Q5: Is identity/versioning sufficiently defined?; Q6: Are domain boundaries sufficiently justified?.

### SRC-0184 — StudyNexus — Decisions & Architecture Decision Records

- **Historical path:** `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/02-decisions.md`
- **Period/version:** 2026-08-07
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-007
- **Contribution:** This document is the canonical consolidation of all approved business decisions, architecture decision records, resolved open questions, rejected alternatives, and the change proposal protocol governing modifications to frozen artifacts. It supersedes all prior per-document decision fragments and serves as the single source of truth for w Key sections: 1. Business Discovery Decisions; 1.1 Identity & Vision (A0); 1.2 Primary Users (A1); 1.3 Secondary Users & Architecture Principles (A2); 1.4 Problem Space (A3); 1.5 Strategic Evolution (A4).

### SRC-0185 — StudyNexus -- Domain Model

- **Historical path:** `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/03-domain.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-008
- **Contribution:** Sources: 13-domain-discovery-consolidation.md, 15-domain-discovery-topic4-behaviour.md, 16-domain-discovery-topic3.md, 12-domain-discovery-topic2-revision.md, 14-architectural-review-global-domain.md, 21-domain-architecture-frozen-baseline.md Architecture: Laravel Beyond CRUD (Brent Roose & Freek Van der Herten) -- Pragmatic Domain-Driven Key sections: 1. Domain Principles; 2. Entity Register (11); Aggregate Roots (5); Child Entities (3); Supporting Entities (3); 3. Value Objects (28).

### SRC-0286 — StudyNexus — Decisions & Architecture Decision Records

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/02-decisions.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-007
- **Contribution:** This document is the canonical consolidation of all approved business decisions, architecture decision records, resolved open questions, rejected alternatives, and the change proposal protocol governing modifications to frozen artifacts. It supersedes all prior per-document decision fragments and serves as the single source of truth for w Key sections: 1. Business Discovery Decisions; 1.1 Identity & Vision (A0); 1.2 Primary Users (A1); 1.3 Secondary Users & Architecture Principles (A2); 1.4 Problem Space (A3); 1.5 Strategic Evolution (A4).

### SRC-0287 — StudyNexus -- Domain Model

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/03-domain.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-008
- **Contribution:** Sources: 13-domain-discovery-consolidation.md, 15-domain-discovery-topic4-behaviour.md, 16-domain-discovery-topic3.md, 12-domain-discovery-topic2-revision.md, 14-architectural-review-global-domain.md, 21-domain-architecture-frozen-baseline.md Architecture: Laravel Beyond CRUD (Brent Roose & Freek Van der Herten) -- Pragmatic Domain-Driven Key sections: 1. Domain Principles; 2. Entity Register (13); Aggregate Roots (5); Child Entities (4); Supporting Entities (4); 3. Value Objects (29).

### SRC-0300 — Foundational Decisions Brief

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/FOUNDATIONAL-DECISIONS-BRIEF.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-018
- **Contribution:** Scope: Six foundational decisions that must be resolved before any reconciliation can be executed Status: ANALYSIS COMPLETE — awaiting human resolution of all six decisions Constraint: No canonical documents modified. No baseline modified. No code. No migrations. No reconciliation executed. 1a. UUID as explicit primary key (2 tables only) Key sections: Decision Inventory; 1. Current Evidence; Where UUID is mentioned and what it is used for; Where bigint is mentioned; Where PK type is unstated; Slug usage.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0494 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/13-domain-discovery-consolidation.md` | `82d25a326e4676a9e83c11279c28c2bfe916eb56e3d605e4df2590b340be4f07` | 8 |  |
| SRC-0495 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/14-architectural-review-global-domain.md` | `15eebf8a7845c74a562e971baffc4ca07f66207b0eb75555deb14dc13a1b2279` | 9 |  |
| SRC-0497 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/16-domain-discovery-topic3.md` | `f6ce0caa6457b3b573ea7ef4f245c563eac474958ad2c37dca96d2dcf6d76608` | 8 |  |
| SRC-0498 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/17-domain-integrity-review.md` | `208a4a7610ee77bd3ea92175ca7781200b2ca5122b0dcdd95e6e197a5445ba46` | 8 |  |
| SRC-0499 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/18-domain-resolution-analysis.md` | `8e9a38de60815f397e77a4631f3d845042dd186e5b018280fb8451dd6b0bab0c` | 8 |  |
| SRC-0500 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/19-domain-architecture.md` | `0d9e019903321b227c8d399c14a8aa926e7f78c90361653145dc9a25afd4561b` | 8 |  |
| SRC-0501 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/20-domain-architecture-validation.md` | `333f179e116447071bec460a6704ed5576d8e6238060b4fec5f91310df8b66be` | 8 |  |
| SRC-0502 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/21-domain-architecture-frozen-baseline.md` | `5714e0c76d2cc9c87b61af4eea0a267ffbaf815376332f9b84d5e1c97de1ba9c` | 9 |  |
| SRC-0505 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/24-final-platform-and-capability-architecture.md` | `217973d4b8416b598b5f2bcca737799bed40d08d73756fabbc524549ad91b9fa` | 9 |  |
| SRC-0512 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/VERIFICATION-REPORT.md` | `eae4fc33ca1158b08948e1fe4a6936607d4cf09917e53a4ac95cb97aa15c7b98` | 7 |  |
| SRC-0514 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/02-decisions.md` | `4d5de0b686f3ec3c26813900553e292044f4693f2b7a376dd35aef7bd528e6a9` | 1 | NDG-007 |
| SRC-0515 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/03-domain.md` | `94bbfd8c5cc2af4e77ad4fdbfcc095de56f4295870a9fc5210edee898c40622e` | 1 | NDG-008 |
| SRC-0523 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-UPDATE-REPORT.md` | `22925df4c766bd8975775346abaad638ed5a729b225301261a616eb6184d30f7` | 1 | NDG-014 |
| SRC-0528 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FOUNDATIONAL-DECISIONS-BRIEF.md` | `30d620813f307d76dcb1363c540a74b0f30f30b964bb4bb0603bb722234b7a10` | 1 | NDG-018 |
| SRC-0016 | `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/02-decisions.md` | `76c0f232402e5e1e5b0cc901c2c8e97abf0b5c53130aa81a907833fb984b38a8` | 1 | NDG-007 |
| SRC-0017 | `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/03-domain.md` | `8d345a616b453b1321e45d2612276751045f554efc22f912a7bd2e23ca9cb7c8` | 1 | NDG-008 |
| SRC-0093 | `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/02-decisions.md` | `b20f567391416ae3be450b10014418c61a794ca1e42e9a1556d802578f2e9535` | 1 | NDG-007 |
| SRC-0094 | `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/03-domain.md` | `e6f73f2f4f1d02893cc4f30c9ab3fe58d37d5b32620d1a9f94476616031d2e8b` | 1 | NDG-008 |
| SRC-0096 | `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/05-implementation.md` | `4dc1c0ce740e3ccf8c15762a5a353bff3072bf1b5df6116a0dda2469c2ad4f69` | 1 | NDG-010 |
| SRC-0128 | `StudyNexus-Independent-Audit-Package-v4/05-PRODUCT-STRATEGY/MERGED-AUDIT-OF-STUDYNEXUS-PLAN.md` | `9bba661f7492371c199519d5a6e331d7ca8951f6fc0307110764f31b5cfbbb2e` | 1 |  |
| SRC-0184 | `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/02-decisions.md` | `7c15d7598ed812de24a62e50c4845cbe2040e2d96f451eb776eafdebcdf9be8f` | 1 | NDG-007 |
| SRC-0185 | `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/03-domain.md` | `14ddee79a34c0dc3d1f1eecc89d5383f6ad16ddebda0a3256c8af1b9dcd2d3f3` | 1 | NDG-008 |
| SRC-0286 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/02-decisions.md` | `09d61d48aa048c4b7c6ab9f733ef1b767935cfde024f9d62711d3e91245222da` | 5 | NDG-007 |
| SRC-0287 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/03-domain.md` | `ae3884330189a44797690b28c25d4893fc724f612edcf244c33b649bf86d58de` | 5 | NDG-008 |
| SRC-0300 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/FOUNDATIONAL-DECISIONS-BRIEF.md` | `780280921a57f5f094584c80852f510fbaafb3da3deaa9462cdfb7e592fe5abd` | 5 | NDG-018 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
