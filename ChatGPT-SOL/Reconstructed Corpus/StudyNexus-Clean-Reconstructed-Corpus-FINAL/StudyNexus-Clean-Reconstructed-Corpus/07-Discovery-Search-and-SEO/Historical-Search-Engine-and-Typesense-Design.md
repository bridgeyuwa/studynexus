---
corpus_id: COR-SEARCH-003
title: "Historical Search Engine and Typesense Design"
category: discovery-search-and-seo
subcategory: search-technical
status: HISTORICAL
authority: TECHNICAL_HISTORY
temporal_scope: HISTORICAL
source_count: 1
sources:
  - SRC-0542
related_resolutions:
  - NONE
related_open_questions:
  - NONE
---

# Historical Search Engine and Typesense Design

**Purpose.** Preserves historical search implementation proposals without asserting a current architecture decision.

## Authority and current status

**Historical technical material only.** This dossier records prior design/implementation work. It is not a current technical architecture decision and must not pre-empt the future Product Language → DDD → architecture sequence.

## Current understanding from the accepted product baseline

### Related canonical product concepts

- **CON037 — Derived Representation**: A representation calculated, normalized, classified or projected from canonical and/or curated StudyNexus information for discovery, search, comparison, publication or presentation.
- **CON045 — Facet**: A meaningful dimension by which users can narrow or explore education information, such as geography, institution type, offering/discovery classification, funding or other supported attributes.

## Historical evolution and source evidence

### SRC-0542 — StudyNexus V4.6 → V4.7 — Contract Diff

- **Historical path:** `studynexus-v4.7-remediation-package/studynexus-v4.7/05-contract-diff/CONTRACT-DIFF.md`
- **Period/version:** V4.7 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document: 05 — Contract Diff (V4.7 §76 item 9) This document shows OLD (V4.6) vs NEW (V4.7) contract language for the most critical changes. Full per-file diffs are in the Change Manifest (deliverable #4). - Removed: "PostgreSQL FTS is maintained as a secondary search capability ... as a fallback when Typesense is unavailable" - Removed: Key sections: Diff 1: Public Search Engine Selection (SEARCH-001); OLD (V4.6 — canonical/02-decisions.md ADR-6, line 237); NEW (V4.7 — SEARCH-001); Delta Analysis; Diff 2: Typesense Outage Contract (OUTAGE-001); OLD (V4.6 — MANIFEST §4.30).

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0542 | `studynexus-v4.7-remediation-package/studynexus-v4.7/05-contract-diff/CONTRACT-DIFF.md` | `ccc5120b6652ca62a3fff6f40f69f6dc84afc87c7d36aba4e2dae79e7dd2389f` | 1 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
