---
corpus_id: COR-GOV-001
title: "Governance, Authority and Change Control"
category: governance-privacy-and-compliance
subcategory: authority
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 10
sources:
  - SRC-0481
  - SRC-0491
  - SRC-0521
  - SRC-0522
  - SRC-0011
  - SRC-0113
  - SRC-0114
  - SRC-0115
  - SRC-0253
  - SRC-0294
related_resolutions:
  - R004
related_open_questions:
  - NONE
---

# Governance, Authority and Change Control

**Purpose.** Consolidates how historical authority/freeze/change-control worked and overlays the accepted Product Discovery authority hierarchy.

## Authority and current status

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related canonical product concepts

- **CON033 — Source**: An identifiable origin from which StudyNexus receives information or evidence, with provenance and authority characteristics that may differ by fact type and context.

### Relevant current resolutions

- **R004**: No. Historical phase labels are delivery history. Current MVP membership is determined independently under the current MVP-default rule; underspecification and first-slice omission do not remove a capability.

## Historical evolution and source evidence

### SRC-0481 — StudyNexus V4.6 — Authority Hierarchy & Document Classification

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION/AUTHORITY-HIERARCHY.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-002
- **Contribution:** Purpose: Define the authority hierarchy governing all documents in the V4.6 handoff package. When documents conflict, higher-tier documents always prevail. If any document at Tier N contradicts a document at Tier M where M < N, the Tier M document prevails. - If product-experience/ says something that contradicts canonical/, Canonical win Key sections: Tier Classification; Conflict Resolution Rule; Tier 1 — Canonical Documents (Authoritative); Tier 2 — Product Experience Documents; Tier 4 — Governance Documents; Tier 6 — Historical Archive.

### SRC-0491 — StudyNexus — Business Discovery Freeze

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/09-business-discovery-freeze.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Business Discovery is now complete and frozen. The following principles are immutable and govern all subsequent discovery phases: The following artifacts are frozen as of this date: 1. Identify the specific approved decision or artifact to be changed. - Rationale (what new information necessitates the change?) - Impact analysis (which oth Key sections: Freeze Principles; Frozen Artifact Inventory; Change Proposal Protocol; What Is NOT Frozen.

### SRC-0521 — StudyNexus — Canonical Amendment Report

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-AMENDMENT-REPORT.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-012
- **Contribution:** Phase: CANONICAL AMENDMENT (post FINAL-LINEAGE-SEMANTICS-RESOLUTION) Constraint: No migrations written. No application code written. No Laravel scaffolding. Frozen baseline unmodified. Total files modified: 6 of 6 canonical documents Total files created: 0 (no new canonical documents) None. All contradictions identified during the amendme Key sections: 1. Files Modified; 2. Exact Amendments Applied; 2.1 Foundational Decisions (BD-1, BD-3, BD-5, ND-5, ND-4); 2.2 Schema Changes; 2.3 Enum Alignments; 2.4 Implementation Specifications Added.

### SRC-0522 — StudyNexus — Canonical Consistency Audit (Post-Amendment, V4.6 Corrected)

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-CONSISTENCY-AUDIT.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-013
- **Contribution:** Date: 2026-08-17 (V4.6 corrective pass: 2026-08-19) Scope: Complete cross-document audit of all 6 canonical documents after amendment Status: REMEDIATED — consistency restored via canonical alignment. V4.6 corrective pass applied to fix stale CutOffMark/AdmissionPolicy/AccreditationRecord ownership rows, stale entity/VO/enum counts, and m Key sections: 0. Remediation Note; Discrepancies Found and Corrected; 1. Audit Methodology; 2. Terminology Consistency; 3. Entity Consistency; 3.1 Aggregate Roots (5).

### SRC-0011 — Authority Hierarchy

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/AUTHORITY-HIERARCHY.md`
- **Period/version:** 2026-08-18
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** When documents conflict, higher-tier documents override lower-tier documents. These 6 documents are the frozen V2 canonical architecture. They are the single authoritative reference for implementation. Override rule: If anything else contradicts these, these win. Current UX/UI/product-experience documents governing the first vertical slic Key sections: TIER 1 — Current Canonical Authority (HIGHEST); TIER 2 — Product Experience Authority; TIER 3 — Current Implementation Plan; TIER 4 — Governance / Decision Evidence; TIER 5 — Product Strategy / Competitive Research; TIER 6 — Historical.

### SRC-0113 — StudyNexus — Canonical Amendment Report

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/CANONICAL-AMENDMENT-REPORT.md`
- **Period/version:** 2026-08-17
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-012
- **Contribution:** Phase: CANONICAL AMENDMENT (post FINAL-LINEAGE-SEMANTICS-RESOLUTION) Constraint: No migrations written. No application code written. No Laravel scaffolding. Frozen baseline unmodified. Total files modified: 6 of 6 canonical documents Total files created: 0 (no new canonical documents) None. All contradictions identified during the amendme Key sections: 1. Files Modified; 2. Exact Amendments Applied; 2.1 Foundational Decisions (BD-1, BD-3, BD-5, ND-5, ND-4); 2.2 Schema Changes; 2.3 Enum Alignments; 2.4 Implementation Specifications Added.

### SRC-0114 — Canonical Authority Matrix

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/CANONICAL-AUTHORITY-MATRIX.md`
- **Period/version:** 2026-03-04
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Purpose: Define which document is authoritative for each category of concern, establishing clear governance to resolve contradictions. This principle derives from the document hierarchy established in 02-decisions.md: the domain model is the canonical expression of the problem space; the implementation blueprint is a projection of that mo Key sections: Governing Principle; Authority Assignments; Tier 1: Primary Authority (Single Document Governs); Tier 2: Subordinate Authority (Governed by Tier 1 for Domain Concepts); Conflict Resolution Protocol; Step 1: Identify the Category.

### SRC-0115 — StudyNexus — Canonical Consistency Audit (Post-Amendment)

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/CANONICAL-CONSISTENCY-AUDIT.md`
- **Period/version:** 2026-08-17
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-013
- **Contribution:** Scope: Complete cross-document audit of all 6 canonical documents after amendment Every canonical document was read in full and checked across 18 consistency dimensions. All stale reference patterns were searched via systematic pattern matching. Every entity, relationship, enum, value object, lifecycle state, invariant, and provenance spe Key sections: 1. Audit Methodology; 2. Terminology Consistency; 3. Entity Consistency; 3.1 Aggregate Roots (5); 3.2 Child Entities (3); 3.3 Supporting Entities (3).

### SRC-0253 — StudyNexus V4.2 — Authority Hierarchy & Document Classification

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION/AUTHORITY-HIERARCHY.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-002
- **Contribution:** Purpose: Define the authority hierarchy governing all documents in the V4.2 handoff package. When documents conflict, higher-tier documents always prevail. If any document at Tier N contradicts a document at Tier M where M < N, the Tier M document prevails. - If product-experience/ says something that contradicts canonical/, Canonical win Key sections: Tier Classification; Conflict Resolution Rule; Tier 1 — Canonical Documents (Authoritative); Tier 2 — Product Experience Documents; Tier 4 — Governance Documents; Tier 6 — Historical Archive.

### SRC-0294 — StudyNexus — Canonical Consistency Audit (Post-Amendment)

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-CONSISTENCY-AUDIT.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-013
- **Contribution:** Scope: Complete cross-document audit of all 6 canonical documents after amendment Status: REMEDIATED — consistency restored via canonical alignment Every canonical document was read in full and checked across 18 consistency dimensions. All stale reference patterns were searched via systematic pattern matching. Every entity, relationship, Key sections: 0. Remediation Note; Discrepancies Found and Corrected; 1. Audit Methodology; 2. Terminology Consistency; 3. Entity Consistency; 3.1 Aggregate Roots (5).

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0481 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION/AUTHORITY-HIERARCHY.md` | `61d4f6212b8e1d5221e074a76acb5a7854da9fd7757fb6b7cfa90ab88f373595` | 1 | NDG-002 |
| SRC-0491 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/09-business-discovery-freeze.md` | `c1dfad3462d93eaf6070bc556eb819183316c2fa44e110ad57f9c0a1fdfc428c` | 9 |  |
| SRC-0521 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-AMENDMENT-REPORT.md` | `4a3a53be6828a54fe90b606464001764e47e4e1903750cf4d2aa0fa99880b71a` | 1 | NDG-012 |
| SRC-0522 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-CONSISTENCY-AUDIT.md` | `c651b051635582e0006d8d4f0b39f25a115311d357fa96a73462451c6f3e4fbb` | 1 | NDG-013 |
| SRC-0011 | `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/AUTHORITY-HIERARCHY.md` | `91def91d2341a456b836bc0fe12f32a6e05e1db3efeb487e3fb717bc70c27cda` | 1 |  |
| SRC-0113 | `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/CANONICAL-AMENDMENT-REPORT.md` | `95c8a3fc49a889cf83fada2239bf2cb4c7165775924312a07c928dc6fccb8401` | 7 | NDG-012 |
| SRC-0114 | `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/CANONICAL-AUTHORITY-MATRIX.md` | `5aa306d9f3eafa06f900633c6a1dfdaaf3e8a1d846e005d9d4230c492f7dcad7` | 2 |  |
| SRC-0115 | `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/CANONICAL-CONSISTENCY-AUDIT.md` | `0939f0c1a439373453ff4cb26ceecbaf53f3fe65efda48820973acdc758c97a2` | 2 | NDG-013 |
| SRC-0253 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION/AUTHORITY-HIERARCHY.md` | `39b65737044882254a46fca3d919e2d5c4d850f1281220fe98e396709becf58e` | 5 | NDG-002 |
| SRC-0294 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-CONSISTENCY-AUDIT.md` | `b244f0578243c27193a583d884806b6a001a2f47a692b160cfc7a07c7f35d482` | 5 | NDG-013 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
