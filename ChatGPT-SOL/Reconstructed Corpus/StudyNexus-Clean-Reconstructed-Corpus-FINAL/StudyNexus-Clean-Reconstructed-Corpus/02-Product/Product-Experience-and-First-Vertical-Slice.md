---
corpus_id: COR-PROD-003
title: "Product Experience and First Vertical Slice"
category: product
subcategory: product-experience
status: HISTORICAL
authority: HISTORICAL_SUPPORT
temporal_scope: HISTORICAL
source_count: 5
sources:
  - SRC-0532
  - SRC-0533
  - SRC-0099
  - SRC-0100
  - SRC-0305
related_resolutions:
  - R005
related_open_questions:
  - NONE
---

# Product Experience and First Vertical Slice

**Purpose.** Preserves product-experience and first-slice work as sequencing/history rather than current scope authority.

## Authority and current status

This dossier primarily preserves historical/evolutionary evidence. Where it touches current product meaning, the accepted Product Discovery governs.

## Current understanding from the accepted product baseline

### Related canonical product concepts

- **CON051 — Postgraduate Pathway / Opportunity**: Information that helps users discover and understand postgraduate study options and relevant entry/pathway information.
- **CON055 — Notification**: A product-initiated alert or update to a user about relevant educational information or changes, where the user has an appropriate delivery context/consent.

### Relevant current resolutions

- **R005**: WF7 remains MVP/current product workflow. Its omission from the first vertical slice was sequencing, not supersession.

## Historical evolution and source evidence

### SRC-0532 — StudyNexus — First Vertical Slice Visual UI Specification

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/FIRST-VERTICAL-SLICE-UI.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-019
- **Contribution:** Status: VISUAL UI DESIGN — awaiting human approval Phase: Visual UI specification (not implementation code) UX Baseline: FIRST-VERTICAL-SLICE-UX.md (behavioral constraint — not replaced) Implementation Stack: TALL — Tailwind CSS ^4.0 + Alpine.js ^3.0 + Livewire ^4.0 + Flux + Blade Constraint: No code written. No canonical documents modifi Key sections: 2.1 Visual Personality; 2.2 Design Principles; 3.1 Color; Semantic Color Roles; Status / Lifecycle Colors; Semantic Colors.

### SRC-0533 — StudyNexus — First Vertical Slice UX Specification

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/FIRST-VERTICAL-SLICE-UX.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-020
- **Contribution:** Status: UX DESIGN — awaiting human approval Phase: UX specification (not discovery, not visual design, not implementation) Note: Typesense is the V1 search engine. PostgreSQL FTS is available as fallback for admin search and degraded mode. All search functionality in V1 is served by Typesense; PostgreSQL FTS + pgtrgm + GIN indexes provide Key sections: Flow 1 — Targeted Search (most common); Flow 2 — Discipline Browse; Flow 3 — SEO Direct Entry; Flow 4 — Institution-First; 9.1 Homepage Search Box; 9.2 Programme Search Page Search.

### SRC-0099 — StudyNexus — First Vertical Slice Visual UI Specification

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/FIRST-VERTICAL-SLICE-UI.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-019
- **Contribution:** Status: VISUAL UI DESIGN — awaiting human approval Phase: Visual UI specification (not implementation code) UX Baseline: FIRST-VERTICAL-SLICE-UX.md (behavioral constraint — not replaced) Implementation Stack: TALL — Tailwind CSS ^4.0 + Alpine.js ^3.0 + Livewire ^4.0 + Flux + Blade Constraint: No code written. No canonical documents modifi Key sections: 2.1 Visual Personality; 2.2 Design Principles; 3.1 Color; Semantic Color Roles; Status / Lifecycle Colors; Semantic Colors.

### SRC-0100 — StudyNexus — First Vertical Slice UX Specification

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/FIRST-VERTICAL-SLICE-UX.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-020
- **Contribution:** Status: UX DESIGN — awaiting human approval Phase: UX specification (not discovery, not visual design, not implementation) Baseline: 6 canonical documents + PRODUCT-EXPERIENCE-ARCHITECTURE.md + DISCOVERY-CLOSURE.md Constraint: No canonical documents modified. No code written. No visual design (colors, typography, branding). Enable a Niger Key sections: Flow 1 — Targeted Search (most common); Flow 2 — Discipline Browse; Flow 3 — SEO Direct Entry; Flow 4 — Institution-First; 9.1 Homepage Search Box; 9.2 Programme Search Page Search.

### SRC-0305 — StudyNexus — First Vertical Slice UX Specification

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/FIRST-VERTICAL-SLICE-UX.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-020
- **Contribution:** Status: UX DESIGN — awaiting human approval Phase: UX specification (not discovery, not visual design, not implementation) Note: Typesense is the V1 search engine. PostgreSQL FTS is available as fallback for admin search and degraded mode. All search functionality in V1 is served by Typesense; PostgreSQL FTS + pgtrgm + GIN indexes provide Key sections: Flow 1 — Targeted Search (most common); Flow 2 — Discipline Browse; Flow 3 — SEO Direct Entry; Flow 4 — Institution-First; 9.1 Homepage Search Box; 9.2 Programme Search Page Search.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0532 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/FIRST-VERTICAL-SLICE-UI.md` | `2c66d139ce0bff533a1d7f8ca6c81d9e660569af588662259e39455abbcc8167` | 6 | NDG-019 |
| SRC-0533 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/FIRST-VERTICAL-SLICE-UX.md` | `9747623996b802eb4e368e3c99d7a0f687887a6d9f268fce7dea4ea68bef81ec` | 1 | NDG-020 |
| SRC-0099 | `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/FIRST-VERTICAL-SLICE-UI.md` | `a1b3e5dd59e48a7ab173bd3139020be51428c335990f5148fc2fd76dd694e9ba` | 3 | NDG-019 |
| SRC-0100 | `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/FIRST-VERTICAL-SLICE-UX.md` | `9bab280b9983c6225af616da0de7a8a66a042bdb701b6141466eda8bc33b928b` | 3 | NDG-020 |
| SRC-0305 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/FIRST-VERTICAL-SLICE-UX.md` | `74fc59c6ccf6b08a7ea9265d7f845395fc78f3d8ac47d9b89a3a5a7a129bff46` | 5 | NDG-020 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
