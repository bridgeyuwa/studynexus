---
corpus_id: COR-TECH-001
document_kind: SOURCE_RECONSTRUCTION
title: "Historical Platform and Application Architecture"
category: technical-and-architecture
subcategory: platform-architecture
status: HISTORICAL
authority: TECHNICAL_HISTORY
temporal_scope: HISTORICAL
source_count: 15
sources:
  - SRC-0503
  - SRC-0504
  - SRC-0506
  - SRC-0507
  - SRC-0508
  - SRC-0511
  - SRC-0516
  - SRC-0529
  - SRC-0018
  - SRC-0095
  - SRC-0109
  - SRC-0186
  - SRC-0231
  - SRC-0288
  - SRC-0546
related_resolutions:
  - R009
  - R017
related_open_questions:
  - NONE
---

# Historical Platform and Application Architecture

**Purpose.** Subject-level history of platform/application architecture; explicitly not a current architecture baseline.

## Authority and current status

**Historical technical material only.** This dossier records prior design/implementation work. It is not a current technical architecture decision and must not pre-empt the future Product Language → DDD → architecture sequence.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP028 — Rankings / Institutional Intelligence**: Potential comparative ranking/metric/intelligence capability; product membership is not yet established by substantive discovery evidence. _Scope: GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY; strategic status: UNKNOWN._

### Relevant current resolutions

- **R009**: Genuinely unresolved whether ranking/institutional intelligence is a StudyNexus product capability. Do not infer inclusion or exclusion from architecture.
- **R017**: Keep distinct: Search = intentional retrieval; Discovery = exploration/curation; Publication/indexability = decision about public/indexed surfaces; Search infrastructure = serving mechanism. Selective indexation remains product principle.

## Historical evolution and source evidence

### SRC-0503 — StudyNexus — Post-Freeze Platform, Product & Search Architecture Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/22-post-freeze-platform-architecture-review.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Subject: Frozen Baseline (20-domain-architecture-frozen-baseline.md) Method: Adversarial review of platform/product capabilities against the frozen domain architecture Prerequisite: Frozen Baseline (20), Validation & ADR Review (19), Domain Architecture (18), Consolidation (13), Behaviour Discovery (14) Architectural Philosophy: Laravel B Key sections: 1. Executive Summary; 2. Baseline Being Protected; 3. New Requirements; 4. Domain vs Application vs Infrastructure vs Product Classification; Classification Principle; 5. RBAC Architecture.

### SRC-0504 — StudyNexus Laravel Ecosystem & Build-vs-Buy Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/23-laravel-ecosystem-build-vs-buy-review.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Prerequisite: Frozen Baseline (20), Post-Freeze Review (21) Classification: Critical — Infrastructure & Dependency Decision Record 1. [Executive Summary](#1-executive-summary) 2. [Architectural Principle](#2-architectural-principle) 3. [Laravel Beyond CRUD Compatibility](#3-laravel-beyond-crud-compatibility) 4. [Spatie Ecosystem Review](# Key sections: Table of Contents; 1. Executive Summary; 2. Architectural Principle; 3. Laravel Beyond CRUD Compatibility; 4. Spatie Ecosystem Review; 4.1 Core Infrastructure Packages.

### SRC-0506 — Document 25: Pre-Implementation Reconciliation

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/26-pre-implementation-reconciliation.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** StudyNexus — Adversarial Reconciliation & Implementation Readiness Review 20. Laravel Beyond CRUD Compliance Review 22. Final Implementation Readiness Score 24. Explicit List of Things That MUST NOT Be Built Document 24 is a substantial and largely faithful translation of the canonical architecture into implementation specifications. Howe Key sections: Table of Contents; 1. Executive Verdict; Critical Issues Found; What Is NOT Wrong; 2. Changes Required to Document 24; Change R1: Update Tech Stack to Current Stable Versions.

### SRC-0507 — Document 26: Final Corrected Pre-Implementation Blueprint

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/27-final-corrected-pre-implementation-blueprint.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** StudyNexus — The Single Coherent Implementation Blueprint 2. Hard Platform Baseline (Laravel 13 + PHP 8.5) 3. Global Product Direction (Nigeria → Africa → Global) 4. Reconciliation Change Application Record 18. RBAC with spatie/laravel-permission (BookStack-Inspired) 25. Final Package Matrix (Laravel 13 Baseline) When documents conflict, Key sections: Table of Contents; 1. Source of Truth Hierarchy; 2. Hard Platform Baseline (Laravel 13 + PHP 8.5); 2.1 Core Stack; 2.2 Frontend Stack (TALL); 2.3 Admin Stack.

### SRC-0508 — Document 27: Laravel 13 / PHP 8.5 Package & Ecosystem Verification Audit

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/28-package-verification-audit.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** StudyNexus — Package Fact-Check and Compatibility Audit This is a fact-checking exercise, not a recommendation exercise. For each package already selected in Documents 20–26, this audit answers only: 5. Does that release support Laravel 13? Community articles, blog posts, Stack Overflow, Reddit, and AI-generated package lists are not acce Key sections: Section 1 — Verification Method; 1.1 Principle; 1.2 Authoritative Sources; 1.3 Classification System; 1.4 Rules; Section 2 — Canonical Selected Package Register.

### SRC-0511 — StudyNexus — Historical Documentation Archive

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/HISTORICAL-README.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Warning: These documents are historical records of the StudyNexus discovery and architecture process. They are not authoritative implementation instructions. Current canonical documentation takes precedence. This archive preserves the provenance of the StudyNexus project. The documents here record the step-by-step discovery, review, valid Key sections: Purpose; Authority Rule; Known Historical Divergences; Archive Contents; Implementation Rule.

### SRC-0516 — StudyNexus — Architecture

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-009
- **Contribution:** The architecture of StudyNexus is governed by principles derived from Laravel Beyond CRUD, the domain discovery process, and the project's global-first ambitions. These principles are decision criteria — when two approaches conflict, the higher-priority principle wins. P1: Domain Accuracy Over Theoretical Purity. The code structure must r Key sections: 1. Architectural Principles; 2. Technology Stack; Runtime and Framework; Frontend: TALL Stack; Admin Panel; Search.

### SRC-0529 — Second-Order Architectural Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/SECOND-ORDER-ARCHITECTURE-REVIEW.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document Type: Second-Order Architectural Validation Review Scope: BD-1, BD-3, BD-5, ND-4, ND-5 1. [Executive Verdict](#1-executive-verdict) 3. [Primary Key Architecture](#3-primary-key-architecture) 4. [Admission Phase Architecture](#4-admission-phase-architecture) 5. [Data Lineage Architecture](#5-data-lineage-architecture) 6. [Informat Key sections: Table of Contents; 1. Executive Verdict; 2. Decision Audit; 3. Primary Key Architecture; Analysis; Comparison.

### SRC-0018 — StudyNexus — Architecture

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/04-architecture.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-009
- **Contribution:** The architecture of StudyNexus is governed by principles derived from Laravel Beyond CRUD, the domain discovery process, and the project's global-first ambitions. These principles are decision criteria — when two approaches conflict, the higher-priority principle wins. P1: Domain Accuracy Over Theoretical Purity. The code structure must r Key sections: 1. Architectural Principles; 2. Technology Stack; Runtime and Framework; Frontend: TALL Stack; Admin Panel; Search.

### SRC-0095 — StudyNexus — Architecture

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/04-architecture.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-009
- **Contribution:** The architecture of StudyNexus is governed by principles derived from Laravel Beyond CRUD, the domain discovery process, and the project's global-first ambitions. These principles are decision criteria — when two approaches conflict, the higher-priority principle wins. P1: Domain Accuracy Over Theoretical Purity. The code structure must r Key sections: 1. Architectural Principles; 2. Technology Stack; Runtime and Framework; Frontend: TALL Stack; Admin Panel; Search.

### SRC-0109 — StudyNexus — Implementation Plan (Corrected)

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/03-IMPLEMENTATION/IMPLEMENTATION-PLAN.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Status: CORRECTED CANONICAL IMPLEMENTATION PLAN Authority: Derived from V2 frozen baseline: 02-decisions.md, 03-domain.md, 04-architecture.md, 05-implementation.md, 06-data-acquisition.md Constraint: No new domain concepts. No reopened foundational decisions. No premature optimization. This document converts the frozen architecture into a Key sections: 1.1 Laravel Project Creation; 1.2 Directory Structure (Laravel Beyond CRUD); 1.3 Initial Configuration; 2.1 Core Framework Packages; 2.2 Domain/Authorization Packages; 2.3 Search Packages.

### SRC-0186 — StudyNexus — Architecture

- **Historical path:** `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/04-architecture.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-009
- **Contribution:** The architecture of StudyNexus is governed by principles derived from Laravel Beyond CRUD, the domain discovery process, and the project's global-first ambitions. These principles are decision criteria — when two approaches conflict, the higher-priority principle wins. P1: Domain Accuracy Over Theoretical Purity. The code structure must r Key sections: 1. Architectural Principles; 2. Technology Stack; Runtime and Framework; Frontend: TALL Stack; Admin Panel; Search.

### SRC-0231 — StudyNexus — Architecture

- **Historical path:** `StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md`
- **Period/version:** V4.2 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-009
- **Contribution:** The architecture of StudyNexus is governed by principles derived from Laravel Beyond CRUD, the domain discovery process, and the project's global-first ambitions. These principles are decision criteria — when two approaches conflict, the higher-priority principle wins. P1: Domain Accuracy Over Theoretical Purity. The code structure must r Key sections: 1. Architectural Principles; 2. Technology Stack; Runtime and Framework; Frontend: TALL Stack; Admin Panel; Search.

### SRC-0288 — StudyNexus — Architecture

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-009
- **Contribution:** The architecture of StudyNexus is governed by principles derived from Laravel Beyond CRUD, the domain discovery process, and the project's global-first ambitions. These principles are decision criteria — when two approaches conflict, the higher-priority principle wins. P1: Domain Accuracy Over Theoretical Purity. The code structure must r Key sections: 1. Architectural Principles; 2. Technology Stack; Runtime and Framework; Frontend: TALL Stack; Admin Panel; Search.

### SRC-0546 — StudyNexus V4.6 → V4.7 — External Evidence Register

- **Historical path:** `studynexus-v4.7-remediation-package/studynexus-v4.7/09-external-evidence/EXTERNAL-EVIDENCE-REGISTER.md`
- **Period/version:** V4.7 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document: 09 — External Evidence Register (V4.7 §76 item 14, §9-§10) This register records external facts cited in the V4.6 → V4.7 remediation. Per V4.7 §9: "External facts are evidence, not authority." Per V4.7 §10: "Tier 1/high-volatility external facts are reverified according to the external operational process." Per V4.7 §10: "Tier 1 Key sections: Tier 1 External Facts (require authoritative primary evidence + corroboration); EE-001 — Laravel Fortify latest stable version; EE-002 — bezhansalleh/filament-shield version compatibility (VERIFICATION REQUIRED); EE-003 — spatie/laravel-permission ^6.x compatibility; EE-004 — spatie/laravel-activitylog ^5.0 compatibility; EE-005 — typesense/typesense-php v4+ compatibility.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0503 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/22-post-freeze-platform-architecture-review.md` | `886716950b7b3ba5a9dfcef3fedcfb467eb66b1c3860b80323d43b856f308da3` | 9 |  |
| SRC-0504 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/23-laravel-ecosystem-build-vs-buy-review.md` | `c09fa4f087aca72d3921e8525450afef3d9edd9c719fd211c77268743be52c29` | 9 |  |
| SRC-0506 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/26-pre-implementation-reconciliation.md` | `fd8691af9a925206dd726cbf32983d1873304fe2f9a387ab51c558a6b0d711ad` | 9 |  |
| SRC-0507 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/27-final-corrected-pre-implementation-blueprint.md` | `c9a0bdaf8cc2c3e8fd18ee1440e025737e821477605e34cb57f68d57cf55a8b9` | 9 |  |
| SRC-0508 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/28-package-verification-audit.md` | `bcd2c53ee3004be3d6f16e80bbe72d442122502d69526a63cdc7f780cd3ebbac` | 8 |  |
| SRC-0511 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/HISTORICAL-README.md` | `5a6114b1f966f3da4b8c240b479451451d1f3b1f9594885966d2f8a1285e1f20` | 8 |  |
| SRC-0516 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md` | `c58eda96b628e4a8442cefd339e1ebf59c05faaafb7b44b3cbf1e041d66fb8e7` | 1 | NDG-009 |
| SRC-0529 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/SECOND-ORDER-ARCHITECTURE-REVIEW.md` | `dc2e37f8cdc76a14a61bece90eb68f67e65637af0c9befdbb45d111d6176a6cc` | 8 |  |
| SRC-0018 | `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/04-architecture.md` | `1723c4f467d545d5f015b9aea6ed3167a7506c92b9350bcd3fa56ba5d0c6319a` | 1 | NDG-009 |
| SRC-0095 | `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/04-architecture.md` | `6d3e3cac4ce081f68f15886bf57441ab250ba8f563f1e16a9443d1fe8d1565ed` | 1 | NDG-009 |
| SRC-0109 | `StudyNexus-Independent-Audit-Package-v4/03-IMPLEMENTATION/IMPLEMENTATION-PLAN.md` | `cf4fb8d47c8b1018f1a7c6d41b37050c332bf9637722dc9b794285f3f4c501ef` | 2 |  |
| SRC-0186 | `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/04-architecture.md` | `ae09767ab9ee38855d23c50ed3734f0bf644de7f2265ddcedac3913d535b3b6a` | 1 | NDG-009 |
| SRC-0231 | `StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md` | `86f7c911d708546e42481e2831a7529bbaa529f6ca3e9432fa6194b9730229cb` | 1 | NDG-009 |
| SRC-0288 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md` | `2e4de7f0386af59074116d114a600969352d1c246af05385bdfba7ac9b88cc24` | 4 | NDG-009 |
| SRC-0546 | `studynexus-v4.7-remediation-package/studynexus-v4.7/09-external-evidence/EXTERNAL-EVIDENCE-REGISTER.md` | `61b12ed6395fe1a960e64159e8f482b76e57948ffdfca79a1c731e11a33ce118` | 1 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
