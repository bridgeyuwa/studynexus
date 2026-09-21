---
corpus_id: COR-ACQ-001
title: "Data Acquisition, Ingestion and Reconciliation"
category: acquisition-and-operations
subcategory: acquisition
status: HISTORICAL
authority: TECHNICAL_HISTORY
temporal_scope: HISTORICAL
source_count: 9
sources:
  - SRC-0510
  - SRC-0518
  - SRC-0527
  - SRC-0020
  - SRC-0097
  - SRC-0188
  - SRC-0290
  - SRC-0347
  - SRC-0461
related_resolutions:
  - R002
related_open_questions:
  - NONE
---

# Data Acquisition, Ingestion and Reconciliation

**Purpose.** Consolidates historical acquisition pipeline material and current product-level trust boundaries.

## Authority and current status

**Historical technical material only.** This dossier records prior design/implementation work. It is not a current technical architecture decision and must not pre-empt the future Product Language → DDD → architecture sequence.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP025 — Notifications**: Alert users to relevant changing information/opportunities when an appropriate delivery/consent context exists. _Scope: MVP — underspecified; strategic status: IN._
- **CAP028 — Rankings / Institutional Intelligence**: Potential comparative ranking/metric/intelligence capability; product membership is not yet established by substantive discovery evidence. _Scope: GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY; strategic status: UNKNOWN._

### Related canonical product concepts

- **CON056 — Ranking / Institutional Intelligence**: An unresolved possible product concept involving comparative institutional metrics, imported rankings, normalized observations or StudyNexus-derived intelligence. Product-capability membership is not established.

### Relevant current resolutions

- **R002**: No. An Institution Offering may exist, be public/searchable and remain unclassified. Classification is a StudyNexus-curated discovery aid, not an existence/ingestion gate.

## Historical evolution and source evidence

### SRC-0510 — Document 30: Data Acquisition & Ingestion Pipeline

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/30-data-acquisition-pipeline.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-005
- **Contribution:** Status: Canonical design — addresses audit finding §17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (file 21) Platform baseline: Laravel 13.x + PHP 8.5 + Filament v5 + Livewire v4 1. Source of truth is Key sections: 1. Design Principles; 2. Source Taxonomy; 3. Architecture Overview; 4. Staging Schema; 4.1 `import_batches`; 4.2 `pending_imports`.

### SRC-0518 — Data Acquisition & Ingestion Pipeline

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Date: 2026-08-08 (V4.6 trust-boundary amendment: 2026-08-19) Status: Canonical design -- addresses audit finding S17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (21-domain-architecture-frozen-baseline. Key sections: 0. V4.6 Trust-Boundary Amendment (2026-08-19); 0.1 The Trust Boundary; 0.2 Credential Boundary (HARD REQUIREMENT); 0.3 Reconciliation State vs Workflow State (Concept Distinction); 0.4 MISSING ≠ DELETE (HARD REQUIREMENT); 0.5 Read-Only Production Snapshot for Reconciliation.

### SRC-0527 — Foundational Decisions — Adversarial Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FOUNDATIONAL-DECISIONS-ADVERSARIAL-REVIEW.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-017
- **Contribution:** Date: 2026-08-10 (V4.6 supersession note: 2026-08-19) Scope: Adversarial challenge of six recommended foundational decisions Status: ADVERSARIAL ANALYSIS COMPLETE — awaiting human resolution Constraint: No canonical documents modified. No baseline modified. No code. No migrations. No reconciliation executed. Methodology: Every recommendat Key sections: Recommendation Challenged; Strongest Argument Supporting It; BD-1A — External Data Acquisition; Does canonical PK solve source identity problems?; What mechanism should solve source identity?; Multiple sources referring to one entity.

### SRC-0020 — Data Acquisition & Ingestion Pipeline

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/06-data-acquisition.md`
- **Period/version:** 2026-08-08
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-005
- **Contribution:** Status: Canonical design -- addresses audit finding S17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (21-domain-architecture-frozen-baseline.md) Platform baseline: Laravel ^13.0 + PHP 8.5 + Filament v5 Key sections: 1. Design Principles; 2. Source Taxonomy; 3. Architecture Overview; 4. Staging Schema; 4.1 `import_batches`; 4.2 `pending_imports`.

### SRC-0097 — Data Acquisition & Ingestion Pipeline

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/06-data-acquisition.md`
- **Period/version:** 2026-08-08
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-005
- **Contribution:** Status: Canonical design -- addresses audit finding S17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (21-domain-architecture-frozen-baseline.md) Platform baseline: Laravel ^13.0 + PHP 8.5 + Filament v5 Key sections: 1. Design Principles; 2. Source Taxonomy; 3. Architecture Overview; 4. Staging Schema; 4.1 `import_batches`; 4.2 `pending_imports`.

### SRC-0188 — Data Acquisition & Ingestion Pipeline

- **Historical path:** `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/06-data-acquisition.md`
- **Period/version:** 2026-08-08
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-005
- **Contribution:** Status: Canonical design -- addresses audit finding S17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (21-domain-architecture-frozen-baseline.md) Platform baseline: Laravel ^13.0 + PHP 8.5 + Filament v5 Key sections: 1. Design Principles; 2. Source Taxonomy; 3. Architecture Overview; 4. Staging Schema; 4.1 `import_batches`; 4.2 `pending_imports`.

### SRC-0290 — Data Acquisition & Ingestion Pipeline

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-005
- **Contribution:** Status: Canonical design -- addresses audit finding S17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (21-domain-architecture-frozen-baseline.md) Platform baseline: Laravel ^13.0 + PHP 8.5 + Filament v5 Key sections: 1. Design Principles; 2. Source Taxonomy; 3. Architecture Overview; 4. Staging Schema; 4.1 `import_batches`; 4.2 `pending_imports`.

### SRC-0347 — Data Acquisition & Ingestion Pipeline

- **Historical path:** `StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md`
- **Period/version:** V4.4 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-005
- **Contribution:** Status: Canonical design -- addresses audit finding S17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (21-domain-architecture-frozen-baseline.md) Platform baseline: Laravel ^13.0 + PHP 8.5 + Filament v5 Key sections: 1. Design Principles; 2. Source Taxonomy; 3. Architecture Overview; 4. Staging Schema; 4.1 `import_batches`; 4.2 `pending_imports`.

### SRC-0461 — Data Acquisition & Ingestion Pipeline

- **Historical path:** `StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-005
- **Contribution:** Status: Canonical design -- addresses audit finding S17.3 (most business-critical capability, least architected) Authority: Derived from Business Capability #1 ("Acquire Educational Information"), OQ2-5 resolution, and domain architecture (21-domain-architecture-frozen-baseline.md) Platform baseline: Laravel ^13.0 + PHP 8.5 + Filament v5 Key sections: 1. Design Principles; 2. Source Taxonomy; 3. Architecture Overview; 4. Staging Schema; 4.1 `import_batches`; 4.2 `pending_imports`.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0510 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/30-data-acquisition-pipeline.md` | `18c7c1d07abf6b1f66eb4a5a234f462335bc293f2356bc00e410b1a670e28c69` | 9 | NDG-005 |
| SRC-0518 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md` | `5da8df5d28dbdf02c066b113de037856e4f5274531b9ee45f5e96045d3c10cb0` | 1 |  |
| SRC-0527 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FOUNDATIONAL-DECISIONS-ADVERSARIAL-REVIEW.md` | `b5dc4c2b36a9024f90d6e8478cdbac48c1b2372a17e657d91c48e5161ecfe77f` | 1 | NDG-017 |
| SRC-0020 | `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/06-data-acquisition.md` | `63fc5811f7f02929560d037de8b36c7202819fbfb330249a3892e1f1e8f95030` | 1 | NDG-005 |
| SRC-0097 | `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/06-data-acquisition.md` | `7269a2e9020715297493b443fa1b9a8a4b8efce7df87848d80021984551a7b31` | 1 | NDG-005 |
| SRC-0188 | `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/06-data-acquisition.md` | `bc92ee668e58562aac01fad4ece269eabe5222126de0a75d4ca3d477d09af9c5` | 1 | NDG-005 |
| SRC-0290 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md` | `8cc1e158b5e3933b3f96f6e4aafbcf679c92643593b5c9d04825618171f8e84d` | 2 | NDG-005 |
| SRC-0347 | `StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md` | `76536eafd60713e17a90b1d1a9dff9a068fed4d40d95c94c7e61514386381eac` | 2 | NDG-005 |
| SRC-0461 | `StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md` | `3a6066c6092f69cb9746a4705c9487f8cd8324d17e88ccb5398e586b63f0f876` | 1 | NDG-005 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
