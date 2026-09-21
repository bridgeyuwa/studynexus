---
corpus_id: COR-DATA-002
document_kind: SOURCE_RECONSTRUCTION
title: "Provenance, Lineage, Versioning and MISSING ≠ DELETE"
category: data-and-provenance
subcategory: provenance-lineage
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 2
sources:
  - SRC-0526
  - SRC-0119
related_resolutions:
  - R004
  - R018
  - R019
related_open_questions:
  - NONE
---

# Provenance, Lineage, Versioning and MISSING ≠ DELETE

**Purpose.** Preserves provenance and the MISSING ≠ DELETE safety rule across product and acquisition evidence.

## Authority and current status

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP001 — Trusted Education Information Management**: Acquire, reconcile, maintain, explain and present trustworthy education information with provenance and controlled correction. _Scope: MVP — defined; strategic status: IN._
- **CAP022 — Community/User-Contributed Information Input**: Accept user reports or contributions as evidence/candidate input to information-quality processes. _Scope: MVP — defined; strategic status: IN._

### Related canonical product concepts

- **CON028 — Examination Schedule Event**: A time-sensitive event affecting an examination administration, such as a scheduled sitting, postponement, cancellation or other published change.
- **CON033 — Source**: An identifiable origin from which StudyNexus receives information or evidence, with provenance and authority characteristics that may differ by fact type and context.
- **CON038 — Provenance**: Traceable information about where a StudyNexus fact, candidate, interpretation or publication came from and how it reached its current state.

### Relevant current resolutions

- **R004**: No. Historical phase labels are delivery history. Current MVP membership is determined independently under the current MVP-default rule; underspecification and first-slice omission do not remove a capability.
- **R018**: Keep source authority/freshness/conflict as canonical product concerns. Define category-specific precedence during UL/business-rule work rather than inventing a single global hierarchy now.
- **R019**: Canonicalize the information users may need—source/authority, freshness, verification state, historical/conflict context where material—not a specific badge/color/UI implementation.

## Important boundaries

- MISSING ≠ DELETE.

## Historical evolution and source evidence

### SRC-0526 — StudyNexus — Final Targeted Schema + Provenance Hostile Review

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FINAL-TARGETED-SCHEMA-PROVENANCE-HOSTILE-REVIEW.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-016
- **Contribution:** Document Type: Pre-Migration Freeze Gate — Second Hostile Pass Date: 2026-08-17 (V4.6 supersession note: 2026-08-19) Constraint: No canonical documents modified. No migrations written. No application code. No silent resolution. Previous Verdict Under Attack: GO FOR CANONICAL AMENDMENT — 0 blockers (from Final Pre-Migration Architecture Au Key sections: VERDICT: GO FOR CANONICAL AMENDMENT THEN MIGRATION; Finding Summary; Unresolved Design Decisions; 3A. EAV Risk Analysis; 3B. Semantic Definition; 3C. Retroactive Provenance Problem.

### SRC-0119 — Hostile Architecture Review: field_provenance EAV Risk

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/FIELD-PROVENANCE-HOSTILE-REVIEW.md`
- **Period/version:** 2026-08-18
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Review Type: HOSTILE — Adversarial, Evidence-Based, Willing to Overturn Subject: fieldprovenance table schema and its classification within the StudyNexus data lineage architecture Evidence Base: ADR-DL1, Second-Order Architecture Review, Previous Audit (prev-audit-extracted.txt), 03-domain.md, 05-implementation.md, 06-data-acquisition.md Key sections: 3A. Is field_provenance secretly EAV?; 3A.1 Why field_provenance is NOT canonical EAV; 3A.2 What operations are allowed to read from it?; 3A.3 Can it become a second source of truth?; 3A.4 Does field_name need an application/domain-level whitelist?; 3A.5 How are typed values represented?.

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0526 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FINAL-TARGETED-SCHEMA-PROVENANCE-HOSTILE-REVIEW.md` | `dd548b4e4c14b53d17c6c0f32bd75200429e6abbf8ad4a387f2ed2ca02076bfa` | 1 | NDG-016 |
| SRC-0119 | `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/FIELD-PROVENANCE-HOSTILE-REVIEW.md` | `1f612c9471b328d63c6173338501e13cda941c8a07f48efcd20839369fabc828` | 1 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
