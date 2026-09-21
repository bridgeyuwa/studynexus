---
corpus_id: COR-PROD-001
title: "Product Definition and Scope Governance"
category: product
subcategory: scope-governance
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 5
sources:
  - SRC-0484
  - SRC-0489
  - SRC-0524
  - SRC-0117
  - SRC-0296
related_resolutions:
  - R001
  - R002
  - R003
  - R004
  - R005
  - R006
  - R007
  - R008
  - R010
  - R011
  - R012
  - R013
  - R015
  - R016
  - R017
  - R018
  - R019
  - R020
related_open_questions:
  - NONE
---

# Product Definition and Scope Governance

**Purpose.** Explains the product-definition history and the current scope-governance overlay without replacing the accepted Product Discovery.

## Authority and current status

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP002 — Institution Discovery**: Help users find and explore educational institutions using meaningful criteria and geography. _Scope: MVP — defined; strategic status: IN._
- **CAP020 — Postgraduate Pathways**: Help users discover and understand postgraduate study opportunities and entry pathways. _Scope: MVP — underspecified; strategic status: IN._
- **CAP023 — Public Accounts / Persistent Identity**: Provide persistent user identity only where it supports valuable persistent/personal capabilities while preserving anonymous core discovery/search/comparison. _Scope: MVP — boundary requires refinement; strategic status: IN._
- **CAP026 — Accreditation / Approval / Qualification-Recognition Information**: Represent and explain externally granted regulatory/recognition statuses using the correct contextual meaning rather than a universal Recognition label. _Scope: MVP — boundary requires refinement; strategic status: IN._
- **CAP032 — Multi-Country Public Rollout**: Launching public StudyNexus product coverage across multiple countries. _Scope: EXCLUDED; strategic status: OUT._
- **CAP033 — Automated Eligibility Evaluation**: Deterministically evaluate a candidate profile against structured admission/funding rules and produce a machine-derived eligibility outcome. _Scope: CURRENTLY DEFERRED — evidence required; strategic status: OUT_CURRENTLY_DEFERRED._
- **CAP035 — Full Social / Community Product**: A persistent social/community experience with profiles, feeds, discussion or other community interaction beyond evidence/report submissions. _Scope: GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY; strategic status: UNKNOWN._

### Related canonical product concepts

- **CON012 — Eligibility**: The outcome/assessment of facts against rules in a particular context. Admission eligibility and funding eligibility are not assumed to be one universal rule system.
- **CON014 — Admission Cycle**: A time-bounded admission period/context in which requirements, cutoffs and policies may differ.
- **CON021 — Accreditation**: A time-bounded decision or status granted by a competent authority about the quality/compliance of an institution, offering, programme, campus or other scoped educational object, according to the authority's jurisdiction and scheme.
- **CON048 — Career Pathway**: Information connecting study choices to plausible career directions, occupations or next-step outcomes, without asserting deterministic employment results.
- **CON051 — Postgraduate Pathway / Opportunity**: Information that helps users discover and understand postgraduate study options and relevant entry/pathway information.
- **CON053 — Public Account / Persistent Identity**: A persistent user identity that can support saved state or personal capabilities. It is not required for anonymous core discovery/search/comparison, but under the current MVP-default rule remains in MVP consideration.
- **CON058 — Organization (potential shared abstraction)**: A possible umbrella abstraction for non-person actors such as regulators, exam bodies, scholarship providers, publishers or service providers. It is not an accepted universal StudyNexus product concept.

### Relevant current resolutions

- **R001**: Use Institution Offering as preferred business/product term for the source-faithful institution-specific offering. Discovery Programme is a distinct StudyNexus-curated discovery concept. ProgrammeInstance remains historical technical/domain language for contextual variation and is not automatically a product term.
- **R002**: No. An Institution Offering may exist, be public/searchable and remain unclassified. Classification is a StudyNexus-curated discovery aid, not an existence/ingestion gate.
- **R003**: Do not canonize universal Recognition. Use specific product meanings: Accreditation; Qualification Recognition; Institution Approval/Recognized Status; Regulator/Awarding Authority roles as applicable.
- **R004**: No. Historical phase labels are delivery history. Current MVP membership is determined independently under the current MVP-default rule; underspecification and first-slice omission do not remove a capability.
- **R005**: WF7 remains MVP/current product workflow. Its omission from the first vertical slice was sequencing, not supersession.
- **R006**: Career pathways remain MVP/current scope but are underspecified. The current evidence supports the need, not a detailed solution.
- **R007**: All remain MVP/current scope and underspecified; no explicit rejection exists.
- **R008**: User reports/contributed evidence are MVP inputs to information quality. A full social/community product is not established and remains a distinct unresolved capability question.
- **R010**: Examination information/schedules are MVP/current scope. The exact capability boundary and schedule vocabulary are underspecified/proposed. Practice/attempts/scoring/progress are a distinct current deferral.
- **R011**: Evergreen guides/resources remain MVP/current scope but are underspecified. News is distinct because of time sensitivity.

## Historical evolution and source evidence

### SRC-0484 — StudyNexus — Business Overview

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/01-business-overview.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** StudyNexus is a comprehensive education knowledge platform that aggregates, verifies, organizes, and makes educational information across Nigeria searchable, comparable, and trustworthy. Become the education infrastructure for Africa. Users search, discover, compare, and verify educational opportunities and information. StudyNexus serves Key sections: Identity; Vision; Core Interaction; Users; Primary Users; Secondary Users.

### SRC-0489 — StudyNexus — Business Discovery Closure Report

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/07-business-discovery-closure.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Status: FROZEN (per 09-business-discovery-freeze.md) StudyNexus is a comprehensive education knowledge platform for Nigeria, with a vision to become Africa's education infrastructure. It solves five interconnected problems — Fragmentation, Trust, Discoverability, Comparison, and Accessibility — by aggregating, verifying, organizing, and p Key sections: Business Discovery Summary; Approved Topics; Canonical Business Capabilities; Core MVP (8); Supporting MVP (2); Future (5).

### SRC-0524 — StudyNexus — Final Discovery Closure & Implementation Readiness Gate

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-015
- **Contribution:** Date: 2026-08-10 (V4.6 status update: 2026-08-19) Status: APPROVED — canonical amendments applied per FOUNDATIONAL-DECISIONS-ADVERSARIAL-REVIEW and CANONICAL-AMENDMENT-REPORT; V4.6 declared FINAL in MANIFEST.md. (Previous V4.2 state was "CLOSURE — awaiting human approval for canonical updates"; that approval has since been granted and the Key sections: State Separation (Explicit); Republishing Semantics; Verdict: APPROVE; Scenario Analysis; Scenario A: Cross-cycle history; Scenario B: Intra-cycle revision.

### SRC-0117 — StudyNexus — Final Discovery Closure & Implementation Readiness Gate

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/DISCOVERY-CLOSURE.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-015
- **Contribution:** Status: CLOSURE — awaiting human approval for canonical updates Authority: 6 canonical documents (01–06) + PRODUCT-EXPERIENCE-DISCOVERY.md + PRODUCT-DISCOVERY-CHALLENGE.md Constraint: No canonical documents modified. No code written. No additional discovery documents. Every unresolved item from PRODUCT-DISCOVERY-CHALLENGE.md, classified b Key sections: State Separation (Explicit); Republishing Semantics; Verdict: APPROVE; Scenario Analysis; Scenario A: Cross-cycle history; Scenario B: Intra-cycle revision.

### SRC-0296 — StudyNexus — Final Discovery Closure & Implementation Readiness Gate

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-015
- **Contribution:** Status: CLOSURE — awaiting human approval for canonical updates Authority: 6 canonical documents (01–06) + PRODUCT-EXPERIENCE-DISCOVERY.md + PRODUCT-DISCOVERY-CHALLENGE.md Constraint: No canonical documents modified. No code written. No additional discovery documents. Note: Typesense is the V1 search engine. PostgreSQL FTS is available as Key sections: State Separation (Explicit); Republishing Semantics; Verdict: APPROVE; Scenario Analysis; Scenario A: Cross-cycle history; Scenario B: Intra-cycle revision.

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0484 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/01-business-overview.md` | `70a5bd289c8b2945350cc3dfe27a6f727db770e84a5f60740f529db457c5fde4` | 9 |  |
| SRC-0489 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/07-business-discovery-closure.md` | `6ed21ab4b355541e3a5c8a4cd860a7b06b8f438ea6ea7a162bd4d7f841b64129` | 8 |  |
| SRC-0524 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md` | `8acd5756b60be03b9a02c644de402a8a03423a9a75ef2f0ee4847777b95bad34` | 1 | NDG-015 |
| SRC-0117 | `StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE/DISCOVERY-CLOSURE.md` | `38a7fd221b4773f59b70b868c985d6ae350497f34aae105a91c968d614884cb1` | 3 | NDG-015 |
| SRC-0296 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md` | `16ce463b7c9c047d0215a24f96ce70b1762e50e4369128e45d5e6cf878a2c18b` | 5 | NDG-015 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
