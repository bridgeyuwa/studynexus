---
corpus_id: COR-HIST-003
title: "Handoff, Manifest and Archive Structure History"
category: historical-and-exploratory
subcategory: archive-structure
status: ARCHIVE_ONLY
authority: ARCHIVE_REFERENCE
temporal_scope: HISTORICAL
source_count: 31
sources:
  - SRC-0004
  - SRC-0530
  - SRC-0536
  - SRC-0012
  - SRC-0013
  - SRC-0014
  - SRC-0021
  - SRC-0050
  - SRC-0051
  - SRC-0081
  - SRC-0086
  - SRC-0089
  - SRC-0091
  - SRC-0098
  - SRC-0130
  - SRC-0132
  - SRC-0145
  - SRC-0150
  - SRC-0195
  - SRC-0245
  - SRC-0251
  - SRC-0302
  - SRC-0308
  - SRC-0359
  - SRC-0416
  - SRC-0422
  - SRC-0473
  - SRC-0541
  - SRC-0547
  - SRC-0549
  - SRC-0554
related_resolutions:
  - NONE
related_open_questions:
  - NONE
---

# Handoff, Manifest and Archive Structure History

**Purpose.** Accounts for package scaffolding, manifests and archive-history material that is useful for provenance but not active subject authority.

## Authority and current status

This dossier primarily preserves historical/evolutionary evidence. Where it touches current product meaning, the accepted Product Discovery governs.

## Historical evolution and source evidence

### SRC-0004 — StudyNexus — Pre-Implementation Baseline Manifest

- **Historical path:** `MANIFEST.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** Generated: 2026-08-10T00:45:00+01:00 (Africa/Lagos) This manifest records the SHA-256 hash and size of every file in the pre-implementation baseline. It enables verification that no baseline file has been altered after the snapshot was taken. To verify this baseline has not been altered: Key sections: File Registry; Summary; Verification Instructions.

### SRC-0530 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** Date: 2026-08-19 (V4.6 final remediation pass: 2026-08-19) Status: V4.6 FINAL — Final global tuition domain decision pass complete. The tuition/fee representation ambiguity is RESOLVED: V1/FVS ProgrammeInstance has ONE canonical MonetaryAmount tuition value ({amount, currency}); differentiated fee categories (indigene/non-indigene, home/i Key sections: V4.6 Final Remediation Pass Summary (2026-08-19); V4.6 Audit-Amendment Summary (2026-08-19); File Inventory; Verification.

### SRC-0536 — StudyNexus V4.6 — Developer Handoff

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/README.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-004
- **Contribution:** Status: V4.6 — Documentation baseline: FROZEN — DOCUMENTATION READY. Executable implementation status: NOT YET EXECUTED (no Laravel/Typesense code has been run; this is a documentation freeze, not an executable release). All findings from the V4.6 audit chain (GLM remediation passes + independent Claude verification passes + final defect- Key sections: Quick Start for the Implementation Team; Mandated Technology Stack; Hard Constraints; Package Directory Structure; Authority Hierarchy; V4.6 Canonical Counts.

### SRC-0012 — Current State Map

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/CURRENT-STATE-MAP.md`
- **Period/version:** 2026-08-18
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** - Implementation plan is ready (post 20 corrections + 3 cleanup items) - No code, no migrations, no scaffolding exists - The implementation plan has been audited, corrected, and cleanup-verified - A contract-freeze gate is required before parallel Phase 2 work Key sections: Key Facts; Canonical Counts; Technology Stack.

### SRC-0013 — Package Scope & Discovery Log

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/PACKAGE-SCOPE.md`
- **Period/version:** 2026-08-18
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** Total candidate files across all directories: ~160 6 canonical documents + 1 README. Byte-for-byte copies from frozen V2 baseline. 4 product experience documents from frozen V2 baseline. - IMPLEMENTATION-PLAN.md (current, post-correction) - IMPLEMENTATION-PLAN-FINAL-AUDIT.md (GO verdict) - IMPLEMENTATION-PLAN-FINAL-CLEANUP-REPORT.md (3 cl Key sections: Source Directories Inspected; Candidate Files Discovered; Files Included; 01-CANONICAL (7 files); 02-PRODUCT-EXPERIENCE (4 files); 03-IMPLEMENTATION (6 files).

### SRC-0014 — StudyNexus — Independent Audit Package v3

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/README.md`
- **Period/version:** 2026-08-18
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** Purpose: Complete, self-contained, independently auditable documentation package Target Audience: Independent LLM/architect performing architectural audit Status: AUDIT INPUT — not a claim of correctness This package contains the smallest practical set of documents that gives an independent reviewer a complete understanding of StudyNexus Key sections: What This Package Is; How to Use This Package; Critical Cautions; Package Structure.

### SRC-0021 — 01-CANONICAL — Current Canonical Authority

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/README.md`
- **Period/version:** 2026-08-17
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** These six documents are the frozen V2 canonical architecture for StudyNexus. They are the single authoritative reference for implementation. Where any other document in this package conflicts with these canonical documents, the canonical documents prevail. These documents were produced through a rigorous reconciliation and amendment proce Key sections: Authority: TIER 1 — HIGHEST; Why These Are Authoritative; V2 Immutability; Relationship to Implementation Plan; Documents That Must NOT Override These; Document Summary.

### SRC-0050 — 05-PRODUCT-STRATEGY — Product Strategy & Competitive Research

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/05-PRODUCT-STRATEGY/README.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** This section contains product strategy and competitive research materials. IMPORTANT: This material is NON-AUTHORITATIVE. It informed the product design but does NOT constrain the architecture. Competitor features listed here are NOT StudyNexus requirements unless they appear in the canonical documents. The canonical business document (01 Key sections: Authority: NON-AUTHORITATIVE PRODUCT RESEARCH; Current Contents; Long-Term Capability Areas (from 01-business.md); Competitors Identified (from business context); Global; Africa / Nigeria.

### SRC-0051 — 06-DATA-ACQUISITION — Data Acquisition Research

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/06-DATA-ACQUISITION/README.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** The authoritative data acquisition specification is in 01-CANONICAL/06-data-acquisition.md. This section contains any additional research or context beyond the canonical document. No additional data acquisition research documents were discovered in the project workspace beyond the canonical specification. The canonical document covers: - Key sections: Authority: Supplementary to Canonical; Current Contents; Additional Context Available in Governance.

### SRC-0081 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/07-HISTORICAL/PRE-IMPLEMENTATION-BASELINE-V2-MANIFEST.md`
- **Period/version:** 2026-08-17
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-024
- **Contribution:** All SHA-256 hashes computed on 2026-08-17. Every file is plain text Markdown. No binary content embedded. Key sections: File Inventory; Verification.

### SRC-0086 — StudyNexus Independent Audit Package v3 — Manifest

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/MANIFEST.md`
- **Period/version:** 2026-08-18
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** 1. 02-PRODUCT-EXPERIENCE/FIRST-VERTICAL-SLICE-UI.md → a1b3e5dd59e48a7ab173bd3139020be51428c335990f5148fc2fd76dd694e9ba 2. 02-PRODUCT-EXPERIENCE/FIRST-VERTICAL-SLICE-UX.md → 9bab280b9983c6225af616da0de7a8a66a042bdb701b6141466eda8bc33b928b 3. 02-PRODUCT-EXPERIENCE/PRODUCT-EXPERIENCE-ARCHITECTURE.md → e7cb8c96a4930602c1dcf2a9857e8237908454d3 Key sections: Summary by Category; Summary by Authority; File Inventory; Full SHA-256 Hashes.

### SRC-0089 — StudyNexus — Current State Map

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/00-ORIENTATION/CURRENT-STATE-MAP.md`
- **Period/version:** 2026-08-19
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** Snapshot date: 2026-08-19 | V2 Baseline version: V4.1 (remediated) Key sections: Area Status; Canonical Counts (V4.1); Key Architectural Decisions.

### SRC-0091 — StudyNexus — Independent Audit Package V3

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/00-ORIENTATION/README.md`
- **Period/version:** 2026-08-19
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** Purpose: Complete, self-contained, independently auditable documentation package for handoff to an independent LLM or human architect for comprehensive architectural, product, UX, data, and implementation-plan audit. Package Version: V3 (rebuilt from V4.1-remediated V2 baseline) Status: AUDIT INPUT — not a claim of correctness This packag Key sections: What This Package Is; Package Structure; Critical Rules for Reviewers; How to Use This Package.

### SRC-0098 — StudyNexus — Canonical Authority (Tier 1)

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/README.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** These six documents constitute the frozen canonical authority for StudyNexus. They are the V2 baseline, remediated through multiple waves of independent audit, adversarial review, and surgical correction. 1. These documents override ALL other documents. Where a product experience document, governance document, or historical document confl Key sections: What This Contains; The Documents; Authority Rules; Relationship to Other Tiers; V4.1 Remediation State.

### SRC-0130 — StudyNexus — Product Strategy & Competitive Research

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/05-PRODUCT-STRATEGY/README.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** This section contains competitive intelligence, product discovery challenges, and feature synthesis that INFORMED but does NOT CONSTRAIN the StudyNexus architecture. - PRODUCT-DISCOVERY-CHALLENGE.md (60K) — Comprehensive competitive research across global platforms (Bachelorsportal, Mastersportal, PhDportal, educations.com, IDP, ApplyBoar Key sections: Contents; How to Use This Material; Key Competitors Researched; Global; Africa / Nigeria.

### SRC-0132 — StudyNexus — Data Acquisition Research

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/06-DATA-ACQUISITION/README.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** - 30-data-acquisition-pipeline-HISTORICAL.md — Historical data acquisition pipeline design from the original pre-implementation baseline. Superseded by the canonical 06-data-acquisition.md in Tier 1, but preserved for context on how the pipeline design evolved. - JAMB — Joint Admissions and Matriculation Board (UTME results, cut-off marks Key sections: Contents; Key Data Sources (from canonical 06-data-acquisition.md); Provenance Model.

### SRC-0145 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/07-HISTORICAL/PRE-IMPLEMENTATION-BASELINE-V2-MANIFEST.md`
- **Period/version:** 2026-08-19
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-024
- **Contribution:** Status: REMEDIATED V4.1 (OKLCH theming, Sky/Cyan/Teal/Emerald palette, dark mode, Refactoring UI rules, auth stack & UI boundaries, organization portal workflow, hash updates) All SHA-256 hashes recomputed on 2026-08-19 after V4.1 remediation (OKLCH theming with Sky/Cyan/Teal/Emerald palette, dark mode, Refactoring UI principles, auth sta Key sections: File Inventory; Verification.

### SRC-0150 — StudyNexus — Independent Audit Package V3 Manifest

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/MANIFEST.md`
- **Period/version:** 2026-08-18
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** Source Baseline: PRE-IMPLEMENTATION-BASELINE-V2 (V4.1 remediated) - Total size: 2,556,925 bytes (2497.0 KB) All 6 canonical files are byte-identical copies from the frozen PRE-IMPLEMENTATION-BASELINE-V2 source: - 01-CANONICAL/01-business.md: ✅ VERIFIED - 01-CANONICAL/02-decisions.md: ✅ VERIFIED - 01-CANONICAL/04-architecture.md: ✅ VERIFIE Key sections: File Inventory; Summary Counts; By Category; By Authority Tier; Totals; V2 Canonical Integrity Verification.

### SRC-0195 — StudyNexus — Pre-Implementation Baseline

- **Historical path:** `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/README.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** This directory is the frozen, immutable pre-implementation baseline for the StudyNexus project. It captures the complete state of all authoritative documentation immediately before any implementation work begins. 2026-08-10T00:45:00+01:00 (Africa/Lagos) - Discovery: Closed. All business, domain, architecture, and data acquisition discover Key sections: Purpose; Snapshot Date; Status; Directory Structure; Authority; Canonical Documents — Authoritative.

### SRC-0245 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md`
- **Period/version:** V4.2 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-025
- **Contribution:** Status: REMEDIATED V4.2 FINAL — Typesense V1 search engine, all second-audit findings (B-01–B-10) resolved, table count 61, 57 markdown files, ADR-18 Resolved, admissionrequirements mapped to AdmissionPolicy on ProgrammeInstance, exactly-one campus constraint, constrained pendingrevisions, nested PublishAdmissionPolicy on ProgrammeInstanc Key sections: File Inventory; Verification.

### SRC-0251 — StudyNexus V4.2 — Developer Handoff

- **Historical path:** `StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/README.md`
- **Period/version:** V4.2 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-004
- **Contribution:** Status: REMEDIATED V4.2 FINAL — All 5 BLOCKERs, 11 HIGH findings, and second-audit B-01–B-10 resolved; ready for implementation Supersedes: V4.1 (adversarial audit NO-GO), V2.0 (initial frozen baseline) 1. Read this README to understand the V4.2 state and how to navigate the package. 2. Read 00-ORIENTATION/AUTHORITY-HIERARCHY.md to unders Key sections: Quick Start for the Implementation Team; Mandated Technology Stack; Hard Constraints; Package Directory Structure; Authority Hierarchy; V4.2 Canonical Counts.

### SRC-0302 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-025
- **Contribution:** Status: V4.3 FINAL — Typesense V1 nested object array search architecture (§8.3.1), ProgrammeInstance-boundary faceted filtering, AdmissionPolicy creation boundary clarified, all V4.2 findings plus conditional-GO audit findings resolved, 57 markdown files All SHA-256 hashes recomputed on 2026-08-18 for V4.3 final package. - canonical/05-i Key sections: File Inventory; Verification.

### SRC-0308 — StudyNexus V4.2 — Developer Handoff

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/README.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-004
- **Contribution:** Status: REMEDIATED V4.2 FINAL — All 5 BLOCKERs, 11 HIGH findings, and second-audit B-01–B-10 resolved; ready for implementation Supersedes: V4.1 (adversarial audit NO-GO), V2.0 (initial frozen baseline) 1. Read this README to understand the V4.2 state and how to navigate the package. 2. Read 00-ORIENTATION/AUTHORITY-HIERARCHY.md to unders Key sections: Quick Start for the Implementation Team; Mandated Technology Stack; Hard Constraints; Package Directory Structure; Authority Hierarchy; V4.2 Canonical Counts.

### SRC-0359 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md`
- **Period/version:** V4.4 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-025
- **Contribution:** Status: V4.4 FINAL — Two-layer RBAC import authorization aligned, non-external-ID idempotent upsert keys defined (cutoffmarks, admissionpolicies, accreditationrecords), all V4.3 + conditional-GO second-pass findings resolved, 57 markdown files, unconditional GO All SHA-256 hashes recomputed on 2026-08-19 for V4.4 final package. - canonica Key sections: File Inventory; Verification.

### SRC-0416 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md`
- **Period/version:** V4.5 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-025
- **Contribution:** Status: V4.5 FINAL — README.md upsert key aligned with canonical externalidentifiers schema (authorityid, identifiertype, identifier) WHERE status = 'active' (INV-EI1); no stale terminology found; 57 markdown files All SHA-256 hashes recomputed on 2026-08-19 for V4.5 final package. - README.md — Line 44: idempotent import upsert key corre Key sections: File Inventory; Verification.

### SRC-0422 — StudyNexus V4.2 — Developer Handoff

- **Historical path:** `StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/README.md`
- **Period/version:** V4.5 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-004
- **Contribution:** Status: REMEDIATED V4.2 FINAL — All 5 BLOCKERs, 11 HIGH findings, and second-audit B-01–B-10 resolved; ready for implementation Supersedes: V4.1 (adversarial audit NO-GO), V2.0 (initial frozen baseline) 1. Read this README to understand the V4.2 state and how to navigate the package. 2. Read 00-ORIENTATION/AUTHORITY-HIERARCHY.md to unders Key sections: Quick Start for the Implementation Team; Mandated Technology Stack; Hard Constraints; Package Directory Structure; Authority Hierarchy; V4.2 Canonical Counts.

### SRC-0473 — StudyNexus — Pre-Implementation Baseline v2 Manifest

- **Historical path:** `StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NDG-025
- **Contribution:** Status: V4.6 FINAL — Upsert conflict targets aligned with physical schema (cutoffmarks: pathway not admissionpathway; accreditationrecords: polymorphic accreditabletype/accreditableid/authorityid); RBAC role strings aligned with organizationmembers pivot bare strings (owner, admin); 57 markdown files; unconditional GO All SHA-256 hashes r Key sections: File Inventory; Verification.

### SRC-0541 — StudyNexus V4.6 → V4.7 — Change Manifest

- **Historical path:** `studynexus-v4.7-remediation-package/studynexus-v4.7/04-change-manifest/CHANGE-MANIFEST.md`
- **Period/version:** V4.7 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document: 04 — Change Manifest (V4.7 §76 item 2) Source package: V4.6 (57 files, 43,616 lines) This manifest documents every change required to elevate the V4.6 package to V4.7. The remediation applies 81 governance rules from the V4.7 prompt, addresses 47 findings (22 Tier-1, 18 Tier-2, 7 Tier-3), and propagates 41 registered contracts ( Key sections: Executive Summary; Change Categories; Detailed Change List; 1. README.md; 2. GLOSSARY.md; 3. 00-ORIENTATION/AUTHORITY-HIERARCHY.md.

### SRC-0547 — StudyNexus V4.6 → V4.7 — Archive Contamination Report

- **Historical path:** `studynexus-v4.7-remediation-package/studynexus-v4.7/10-archive-contamination/ARCHIVE-CONTAMINATION-REPORT.md`
- **Period/version:** V4.7 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document: 10 — Archive Contamination Report (V4.7 §76 item 15, §2, §65) This report audits the V4.6 archive/ directory (31 files) for contamination per V4.7 §2 and §65. The archive/ directory contains 31 historical documents: 1. Archive placement — file must be in archive/ directory. ✅ All 31 files comply. 2. Explicit archived/superseded Key sections: Archive Inventory; Labeling Adequacy Audit; ARCHIVE-001 Contract Requirements (per V4.7 §65); Current State; Per V4.7 §2: Is this a finding?; Active-to-Archive Reference Audit.

### SRC-0549 — StudyNexus V4.6 → V4.7 — Changed-File Inventory

- **Historical path:** `studynexus-v4.7-remediation-package/studynexus-v4.7/12-changed-file-inventory/CHANGED-FILE-INVENTORY.md`
- **Period/version:** V4.7 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document: 12 — Changed-File Inventory (V4.7 §76 item 8) This document lists every file that requires modification to elevate V4.6 to V4.7, with the specific changes required per file. File count remains 57 (no files created or deleted; only modifications). - Lines affected: 51, 104, 346, 348, 354, 869, 882, 884, 886, 888, 893, 906, 907, 1 Key sections: Summary; Detailed File-by-File Change List; Files Requiring MAJOR Changes (multiple sections, multiple contracts); 1. canonical/05-implementation.md; 2. canonical/04-architecture.md; 3. canonical/06-data-acquisition.md.

_Additional 1 unique primary sources are retained in the Source Disposition Ledger and source-lineage table below; they are not expanded here to keep the dossier navigable._

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0004 | `MANIFEST.md` | `b2eff185556a4ff128ad6d3a55ddf517f88942f67a1689b3be62db8c0483b667` | 2 |  |
| SRC-0530 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md` | `b39b5c278ab411f9ceb749848633b7fe04d21abc9976dbcce60950aadb1c2786` | 1 |  |
| SRC-0536 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/README.md` | `16821501e9ea1d8b852f191f822184eecacdde68b9d44f30eb7f4ba395abf765` | 1 | NDG-004 |
| SRC-0012 | `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/CURRENT-STATE-MAP.md` | `cd30b0dd3843f29de8fb4b5c29785e85697ac891531f68827778492ea450f9ee` | 1 |  |
| SRC-0013 | `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/PACKAGE-SCOPE.md` | `f1829cd8cce0f4c26831e16f17983a3aa7853890dde31ed0fcbb0f6874e37dcb` | 1 |  |
| SRC-0014 | `StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION/README.md` | `b3c8e300090199c684899d187fefc514a19fde8eaff96950ff244412e4106935` | 1 |  |
| SRC-0021 | `StudyNexus-Independent-Audit-Package-v3/01-CANONICAL/README.md` | `422afd2c7a59d57609da6b347cb0c33adf4b6506421b46c45d4cdc94c845d858` | 1 |  |
| SRC-0050 | `StudyNexus-Independent-Audit-Package-v3/05-PRODUCT-STRATEGY/README.md` | `defa1cc6f88ce88bfcfc230f91c1d71c8218fd03c62c49e51504c3124a2fd2ec` | 1 |  |
| SRC-0051 | `StudyNexus-Independent-Audit-Package-v3/06-DATA-ACQUISITION/README.md` | `07dc2eb88e6ee016ad6290091986010082659f6db119fc6377e99f08825ae3db` | 1 |  |
| SRC-0081 | `StudyNexus-Independent-Audit-Package-v3/07-HISTORICAL/PRE-IMPLEMENTATION-BASELINE-V2-MANIFEST.md` | `669b8059531d38761bb9a4308037590090d299f41049e4dfacec6997d74823e6` | 1 | NDG-024 |
| SRC-0086 | `StudyNexus-Independent-Audit-Package-v3/MANIFEST.md` | `b35ecfd796c32a953b94bfad23582182a2a6de224dc86fdabc9460c980c2f3d6` | 1 |  |
| SRC-0089 | `StudyNexus-Independent-Audit-Package-v4/00-ORIENTATION/CURRENT-STATE-MAP.md` | `f41b75af0c3596180ab82408e9f381987005bcf46f2de61904df35f79c3e04e9` | 1 |  |
| SRC-0091 | `StudyNexus-Independent-Audit-Package-v4/00-ORIENTATION/README.md` | `d18fb0b8545feee07d17764cfc7e756ad866a25917eaf1fa234c93f161d92249` | 1 |  |
| SRC-0098 | `StudyNexus-Independent-Audit-Package-v4/01-CANONICAL/README.md` | `8cc01695d694aa8914d639c23a4a4741bb54cb9680e651c66b2f3863f2e670df` | 1 |  |
| SRC-0130 | `StudyNexus-Independent-Audit-Package-v4/05-PRODUCT-STRATEGY/README.md` | `c5e2a25710116b819a95035d480be8fa7608dad8185632ee20ec04fadef11922` | 1 |  |
| SRC-0132 | `StudyNexus-Independent-Audit-Package-v4/06-DATA-ACQUISITION/README.md` | `371305f795c488707fb9deceb0ef0fe049ccc6e8645601b54d567376b9cbf71f` | 1 |  |
| SRC-0145 | `StudyNexus-Independent-Audit-Package-v4/07-HISTORICAL/PRE-IMPLEMENTATION-BASELINE-V2-MANIFEST.md` | `83d306f7bdf21ace0f44920e572ce82ae14a7b641ac863b6f7a3a9e407473c9f` | 1 | NDG-024 |
| SRC-0150 | `StudyNexus-Independent-Audit-Package-v4/MANIFEST.md` | `461613324cf828ef9f12eb0578c745011bfa4f18df4d9d7c238c4fbe9e65fa55` | 1 |  |
| SRC-0195 | `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/README.md` | `dba3e5acba5fca8202c2e9b5cdae944af55b582ffedfcf3e4904f07a85722c68` | 1 |  |
| SRC-0245 | `StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md` | `59bf727f59079413e9f84e9185beaaac86b2ee7425571003af20a7ad97e34450` | 1 | NDG-025 |
| SRC-0251 | `StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/README.md` | `d03eff1d98ad1a584e4106b218626a2b887389fa16f24aef84546dc33837393d` | 1 | NDG-004 |
| SRC-0302 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md` | `b5afcb3d91c5b3b505007b0131042e6f8e16f49d25d739e08823d40c821acac4` | 1 | NDG-025 |
| SRC-0308 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/README.md` | `6453a7dbeb042318228381acbec6b124d92844350585c418180b2f9c3985a7f6` | 2 | NDG-004 |
| SRC-0359 | `StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md` | `71d64fd1ee594501407b1619aa08e55fa0199e4e8f42506e77c4d2bc2883091c` | 1 | NDG-025 |
| SRC-0416 | `StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md` | `1ea0739a8f39acbbfa9e81610ccb7a751df004d7fde478029e5b9671b8f2e335` | 1 | NDG-025 |
| SRC-0422 | `StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/README.md` | `d46a9effa374eeca5848385c1ed929126f1844dc439e8af11c93b638e4fdb0fa` | 2 | NDG-004 |
| SRC-0473 | `StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/MANIFEST.md` | `11a47f1168024ecfc281ce6efe6ffc1980115071b25391ae64d05aa6b5689f97` | 1 | NDG-025 |
| SRC-0541 | `studynexus-v4.7-remediation-package/studynexus-v4.7/04-change-manifest/CHANGE-MANIFEST.md` | `14be9bb2f5b1239efec02b3bcc2d7a24948621cd15f7de3e9dd2f036a85401c8` | 1 |  |
| SRC-0547 | `studynexus-v4.7-remediation-package/studynexus-v4.7/10-archive-contamination/ARCHIVE-CONTAMINATION-REPORT.md` | `3c9ef40df98cd9c387beeef6e541c733d7ca67d283df40cb4ac736a1e6c74187` | 1 |  |
| SRC-0549 | `studynexus-v4.7-remediation-package/studynexus-v4.7/12-changed-file-inventory/CHANGED-FILE-INVENTORY.md` | `ef6f2205e84f5b7bc871581c31340810d404fb143c75a9d9db83af77264704e4` | 1 |  |
| SRC-0554 | `studynexus-v4.7-remediation-package/studynexus-v4.7/README.md` | `c4d8c7cc9731b9be9b8c5355e38dbffd2d443b079baf32fa35f3f3b25a2d8a51` | 1 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
