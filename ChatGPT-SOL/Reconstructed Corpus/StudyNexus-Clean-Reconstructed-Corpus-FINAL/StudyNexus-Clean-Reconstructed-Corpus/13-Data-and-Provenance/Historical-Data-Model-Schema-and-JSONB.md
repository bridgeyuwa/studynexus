---
corpus_id: COR-DATA-003
title: "Historical Data Model, Schema and JSONB"
category: data-and-provenance
subcategory: data-model
status: HISTORICAL
authority: TECHNICAL_HISTORY
temporal_scope: HISTORICAL
source_count: 5
sources:
  - SRC-0003
  - SRC-0520
  - SRC-0019
  - SRC-0111
  - SRC-0292
related_resolutions:
  - NONE
related_open_questions:
  - NONE
---

# Historical Data Model, Schema and JSONB

**Purpose.** Preserves historical data-model/schema proposals without promoting them into current architecture.

## Authority and current status

**Historical technical material only.** This dossier records prior design/implementation work. It is not a current technical architecture decision and must not pre-empt the future Product Language → DDD → architecture sequence.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP002 — Institution Discovery**: Help users find and explore educational institutions using meaningful criteria and geography. _Scope: MVP — defined; strategic status: IN._

### Related canonical product concepts

- **CON005 — Institution Offering**: The source-faithful fact that a specific institution offers a named course/programme, preserving the institution’s own terminology and real-world offering context.
- **CON030 — Evergreen Guide / Resource**: Longer-lived educational information that explains stable or slowly changing topics, processes, decisions and pathways outside time-sensitive News.
- **CON036 — Canonical StudyNexus Information**: The current StudyNexus representation accepted for product use after applying the relevant evidence, normalization and review rules; it remains a representation of external reality, not ownership of the external authority's underlying fact.
- **CON045 — Facet**: A meaningful dimension by which users can narrow or explore education information, such as geography, institution type, offering/discovery classification, funding or other supported attributes.

## Historical evolution and source evidence

### SRC-0003 — JSONB usage principles 02-09-26

- **Historical path:** `JSONB usage principles 02-09-26.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** CURRENT_SUPPORTING
- **Near-duplicate family:** NONE
- **Contribution:** PostgreSQL's jsonb is powerful and indexable, but that does not make it a substitute for relational modeling; it is best where the data is genuinely document-like or structurally variable. For StudyNexus, JSONB should be treated as an exception rather than the default. The implementation/planning agent should evaluate each candidate accor Key sections: JSONB Usage Principle.

### SRC-0520 — StudyNexus — Adversarial Decision Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/ADVERSARIAL-DECISION-REVIEW.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-011
- **Contribution:** Date: 2026-08-17 (V4.6 supersession note: 2026-08-19) Purpose: Rigorous adversarial review of five proposed foundational decisions before any implementation or migration work begins. Constraint: No canonical documents modified. No migrations. No application code. No silent resolution of any decision. Each of the five decisions is reopened Key sections: PART 1 — REOPEN THE FIVE DECISIONS; 1.1 BD-1 — Residual UUID Question; 1.2 BD-3 — AdmissionCycle Phase Storage; 1.3 BD-5 — External Identifier Model; 1.4 ND-5 — InformationSource Classification; 1.5 ND-4 — Provenance Model.

### SRC-0019 — StudyNexus -- Implementation Blueprint

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/05-implementation.md`
- **Period/version:** 2026-08-08
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-023
- **Contribution:** The platform baseline is non-negotiable. Every package, every migration, every code decision is evaluated against this baseline. There is no Laravel 12 fallback, no PHP 8.3 fallback, no Filament v3 fallback, and no Livewire v3 fallback. The implementation targets Laravel 13 because starting a new project on the current framework major avo Key sections: 1. Platform Baseline; 1.1 Core Stack; 1.2 Frontend Stack (TALL); 1.3 Admin Stack; 1.4 Auth and Testing; 1.5 Version Rationale.

### SRC-0111 — StudyNexus — Adversarial Decision Review

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/ADVERSARIAL-DECISION-REVIEW.md`
- **Period/version:** 2026-08-17
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-011
- **Contribution:** Purpose: Rigorous adversarial review of five proposed foundational decisions before any implementation or migration work begins. Constraint: No canonical documents modified. No migrations. No application code. No silent resolution of any decision. Each of the five decisions is reopened with full adversarial scrutiny. For each decision we Key sections: PART 1 — REOPEN THE FIVE DECISIONS; 1.1 BD-1 — Residual UUID Question; 1.2 BD-3 — AdmissionCycle Phase Storage; 1.3 BD-5 — External Identifier Model; 1.4 ND-5 — InformationSource Classification; 1.5 ND-4 — Provenance Model.

### SRC-0292 — StudyNexus — Adversarial Decision Review

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/ADVERSARIAL-DECISION-REVIEW.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-011
- **Contribution:** Purpose: Rigorous adversarial review of five proposed foundational decisions before any implementation or migration work begins. Constraint: No canonical documents modified. No migrations. No application code. No silent resolution of any decision. Each of the five decisions is reopened with full adversarial scrutiny. For each decision we Key sections: PART 1 — REOPEN THE FIVE DECISIONS; 1.1 BD-1 — Residual UUID Question; 1.2 BD-3 — AdmissionCycle Phase Storage; 1.3 BD-5 — External Identifier Model; 1.4 ND-5 — InformationSource Classification; 1.5 ND-4 — Provenance Model.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0003 | `JSONB usage principles 02-09-26.md` | `764d821a933a732d46b256ca967160da0c702790cd2a7dd9445a440ca2a6cbce` | 1 |  |
| SRC-0520 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/ADVERSARIAL-DECISION-REVIEW.md` | `3cc4fc3264b786c37b2c4825da0d84f1aea1f2f551d6b31d4582254a5725fa09` | 1 | NDG-011 |
| SRC-0019 | `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/05-implementation.md` | `0ef8b6a5470ecc13f27170c25b10ff3116313017cd504a524c4f80cc8985fe3a` | 1 | NDG-023 |
| SRC-0111 | `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/ADVERSARIAL-DECISION-REVIEW.md` | `5a62bf40af2041a22ac3f5169e34455dc005ff032aed66ad0b5195fdd304431c` | 2 | NDG-011 |
| SRC-0292 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/ADVERSARIAL-DECISION-REVIEW.md` | `b73286d559ef25d3c76adc091092b4e1fec24f4ef8352a391c91acd73db45021` | 5 | NDG-011 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
