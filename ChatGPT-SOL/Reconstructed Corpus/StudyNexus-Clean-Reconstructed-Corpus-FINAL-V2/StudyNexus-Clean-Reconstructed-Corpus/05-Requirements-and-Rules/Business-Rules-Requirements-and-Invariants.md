---
corpus_id: COR-REQ-001
document_kind: SOURCE_RECONSTRUCTION
title: "Business Rules, Requirements and Invariants"
category: requirements-and-rules
subcategory: business-rules
status: HISTORICAL
authority: HISTORICAL_SUPPORT
temporal_scope: HISTORICAL
source_count: 3
sources:
  - SRC-0537
  - SRC-0492
  - SRC-0496
related_resolutions:
  - R015
related_open_questions:
  - NONE
---

# Business Rules, Requirements and Invariants

**Purpose.** Collects historical requirement/rule material while preventing old technical invariants from becoming current product requirements automatically.

## Authority and current status

This dossier primarily preserves historical/evolutionary evidence. Where it touches current product meaning, the accepted Product Discovery governs.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP006 — Admissions Information**: Explain institution/offering admission information such as requirements, cut-offs, Post-UTME and applicable admission context. _Scope: MVP — defined; strategic status: IN._
- **CAP007 — Requirements and Self-Assessment**: Let users understand published requirements and compare their declared circumstances against them without claiming a final admissions decision. _Scope: MVP — defined; strategic status: IN._
- **CAP012 — Catchment / ELDS Information**: Explain admission catchment and Educationally Less Developed States (ELDS) rules in the context where they actually apply. _Scope: MVP — defined; strategic status: IN._
- **CAP017 — Career Pathways**: Connect education choices to plausible career directions and next-step information without promising employment outcomes. _Scope: MVP — underspecified; strategic status: IN._
- **CAP019 — Transfer Information**: Help users understand transfer options, requirements and relevant institution/programme constraints. _Scope: MVP — underspecified; strategic status: IN._
- **CAP025 — Notifications**: Alert users to relevant changing information/opportunities when an appropriate delivery/consent context exists. _Scope: MVP — underspecified; strategic status: IN._
- **CAP033 — Automated Eligibility Evaluation**: Deterministically evaluate a candidate profile against structured admission/funding rules and produce a machine-derived eligibility outcome. _Scope: CURRENTLY DEFERRED — evidence required; strategic status: OUT_CURRENTLY_DEFERRED._

### Related canonical product concepts

- **CON001 — StudyNexus**: A Nigeria-first education information, discovery, knowledge and decision-support product that helps learners and advisers find, understand, compare and judge the trustworthiness of educational opportunities and related information.
- **CON010 — Admission**: Information about how a learner may enter an institution or offering, including published requirements, cutoffs, cycles and jurisdiction-specific policy factors.
- **CON011 — Admission Requirement**: A published condition for admission. It is not itself a candidate-specific eligibility result.
- **CON012 — Eligibility**: The outcome/assessment of facts against rules in a particular context. Admission eligibility and funding eligibility are not assumed to be one universal rule system.
- **CON013 — Self-Assessment**: User-supported comparison of their facts against published requirements without implying opaque automated decision-making.
- **CON014 — Admission Cycle**: A time-bounded admission period/context in which requirements, cutoffs and policies may differ.
- **CON015 — Cut-off Mark**: A published threshold applicable in an admission context and time period; it may vary by institution/offering/cycle.
- **CON016 — Catchment**: A geographic admission-policy consideration defined by an authoritative admission policy; it is not physical proximity and not a permanent institution attribute.
- **CON017 — ELDS**: Educationally Less Developed States: a Nigeria-specific admission classification used where authoritative policy applies.
- **CON023 — Institution Approval / Recognized Status**: An externally granted status indicating whether an institution is approved, licensed, recognized, listed or otherwise valid under a competent authority's rules.
- **CON024 — Education Authority / Regulator**: An external body whose authoritative decisions, registers or rules establish educational status, approval, accreditation, admission policy context or other regulated facts.
- **CON028 — Examination Schedule Event**: A time-sensitive event affecting an examination administration, such as a scheduled sitting, postponement, cancellation or other published change.

### Relevant current resolutions

- **R015**: Requirements and self-assessment are MVP. Automated deterministic eligibility evaluation remains currently deferred until reliable structured rules and candidate data exist. Admission and funding eligibility are contextual, not one global rules concept.

## Historical evolution and source evidence

### SRC-0537 — StudyNexus V4.2 Remediation Report

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/V4.2-REMEDIATION-REPORT.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Status: COMPLETE — All 5 BLOCKERs and 11 HIGH findings resolved; second audit (B-01–B-10) resolved in final pass Authority: Lead Architect, surgical remediation per independent adversarial audit NO-GO verdict An independent adversarial audit of the V4.1 package returned a NO-GO verdict. The audit praised the core architecture but identifi Key sections: 1. Purpose; 2. BLOCKER Findings Resolved; BLOCKER 1: Admission Domain Model Incomplete; BLOCKER 2: Publication & Search Aggregation Rules Undefined; BLOCKER 3: URL Contract Contradiction; BLOCKER 4: Pending Revision Persistence Ambiguous.

### SRC-0492 — StudyNexus — Domain Discovery: Topic 2

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/11-domain-discovery-topic2.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Prerequisite: Topic 1 (Core Domain Entities) — Approved with amendments Business Discovery Status: Frozen (immutable) The following amendments from Topic 1 approval are incorporated into this analysis: 1. Admission Requirement → Policy-based model: Individual requirements are not entities. Admission Policy and Eligibility Policy contain r Key sections: Topic 1 Amendments Applied; Candidate Domain Entities (Post-Topic 1); Core Entities; Supporting Entities; Policy Entities; Summary of Understanding.

### SRC-0496 — StudyNexus — Domain Discovery: Topic 4

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/15-domain-discovery-topic4-behaviour.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Prerequisite: Topic 1 (Core Domain Entities), Topic 2 Revision (Aggregate Boundaries), Topic 3 (Entity Attributes & Value Objects), Architectural Review (14), Domain Integrity Review (16), Resolution Analysis (17), Consolidation (13) Business Discovery Status: Frozen (immutable) Objective: Discover actual domain behaviour for every entity Key sections: SECTION 1 — BEHAVIOUR DISCOVERY METHOD; The Ten-Question Filter; Classification of Rejected Operations; SECTION 2 — EDUCATIONAL INSTITUTION; Existing Operations Review; `establish` — Establish a New Institution.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0537 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/V4.2-REMEDIATION-REPORT.md` | `303d3f8bfe0b64feac23566100ba0c4ec029963042f23c06c6808fdd71ba88a1` | 6 |  |
| SRC-0492 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/11-domain-discovery-topic2.md` | `b30bcbe451451ab34c823d5257b0050b5dd9917acd788264577a2023766aa0dd` | 8 |  |
| SRC-0496 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/15-domain-discovery-topic4-behaviour.md` | `8be2133dd4302515abd32ae97d4264deda9ae5577a7caf66dd89bc9125ab29cc` | 8 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
