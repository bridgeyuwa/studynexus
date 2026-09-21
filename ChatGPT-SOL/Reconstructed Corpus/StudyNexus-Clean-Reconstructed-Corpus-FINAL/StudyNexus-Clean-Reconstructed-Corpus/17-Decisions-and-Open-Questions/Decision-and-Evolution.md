---
corpus_id: COR-DEC-001
title: "Decision and Evolution"
category: decisions-and-open-questions
subcategory: decisions
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 4
sources:
  - SRC-0486
  - SRC-0525
  - SRC-0539
  - SRC-0551
related_resolutions:
  - R017
related_open_questions:
  - NONE
---

# Decision and Evolution

**Purpose.** Navigation dossier for current Product Discovery resolutions plus historical business/technical decisions.

## Authority and current status

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP003 — Institution Information**: Present structured, trustworthy institution identity, location, status and other decision-relevant information. _Scope: MVP — defined; strategic status: IN._
- **CAP006 — Admissions Information**: Explain institution/offering admission information such as requirements, cut-offs, Post-UTME and applicable admission context. _Scope: MVP — defined; strategic status: IN._
- **CAP007 — Requirements and Self-Assessment**: Let users understand published requirements and compare their declared circumstances against them without claiming a final admissions decision. _Scope: MVP — defined; strategic status: IN._
- **CAP016 — Evergreen Guides / Resources**: Provide longer-lived explanatory education content and structured resources that support decisions and understanding. _Scope: MVP — underspecified; strategic status: IN._
- **CAP018 — Undergraduate Current Journey / WF7**: Support current undergraduates with information relevant to their ongoing educational journey and next decisions. _Scope: MVP — defined; strategic status: IN._
- **CAP028 — Rankings / Institutional Intelligence**: Potential comparative ranking/metric/intelligence capability; product membership is not yet established by substantive discovery evidence. _Scope: GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY; strategic status: UNKNOWN._
- **CAP029 — Institution / Provider Self-Service**: Direct self-service tools for institutions/providers to maintain their presence or workflows. _Scope: EXCLUDED; strategic status: OUT._
- **CAP033 — Automated Eligibility Evaluation**: Deterministically evaluate a candidate profile against structured admission/funding rules and produce a machine-derived eligibility outcome. _Scope: CURRENTLY DEFERRED — evidence required; strategic status: OUT_CURRENTLY_DEFERRED._

### Related canonical product concepts

- **CON001 — StudyNexus**: A Nigeria-first education information, discovery, knowledge and decision-support product that helps learners and advisers find, understand, compare and judge the trustworthiness of educational opportunities and related information.
- **CON005 — Institution Offering**: The source-faithful fact that a specific institution offers a named course/programme, preserving the institution’s own terminology and real-world offering context.
- **CON012 — Eligibility**: The outcome/assessment of facts against rules in a particular context. Admission eligibility and funding eligibility are not assumed to be one universal rule system.
- **CON013 — Self-Assessment**: User-supported comparison of their facts against published requirements without implying opaque automated decision-making.
- **CON015 — Cut-off Mark**: A published threshold applicable in an admission context and time period; it may vary by institution/offering/cycle.
- **CON019 — Funding Opportunity**: An educational funding opportunity such as scholarship, grant, bursary or aid, with benefits, criteria, dates, restrictions, provider and authoritative handoff.
- **CON021 — Accreditation**: A time-bounded decision or status granted by a competent authority about the quality/compliance of an institution, offering, programme, campus or other scoped educational object, according to the authority's jurisdiction and scheme.
- **CON024 — Education Authority / Regulator**: An external body whose authoritative decisions, registers or rules establish educational status, approval, accreditation, admission policy context or other regulated facts.
- **CON030 — Evergreen Guide / Resource**: Longer-lived educational information that explains stable or slowly changing topics, processes, decisions and pathways outside time-sensitive News.
- **CON034 — Evidence**: Recorded material or observations used to support, challenge or explain a candidate or canonical StudyNexus fact.
- **CON039 — Freshness**: The degree to which information has been observed, verified or updated recently enough for its subject matter and decision context.
- **CON040 — Information Conflict**: A condition where relevant sources, reports, historical observations or accepted information disagree materially about the same decision-relevant subject.

### Relevant current resolutions

- **R017**: Keep distinct: Search = intentional retrieval; Discovery = exploration/curation; Publication/indexability = decision about public/indexed surfaces; Search infrastructure = serving mechanism. Selective indexation remains product principle.

## Historical evolution and source evidence

### SRC-0486 — StudyNexus — Approved Decisions

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** No prose summary inferred; consult source headings/content through the immutable archive.

### SRC-0525 — StudyNexus — Final Lineage Semantics Resolution

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FINAL-LINEAGE-SEMANTICS-RESOLUTION.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document Type: Targeted Semantic Resolution — Final Pass Before Canonical Amendment Constraint: No canonical documents modified. No migrations written. No application code. No reconciliation executed. Scope: Editorial provenance, InformationSource/EducationAuthority semantics, ExternalIdentifier source semantics, model minimization, domai Key sections: GO FOR CANONICAL AMENDMENT; Resolutions Summary; The Question; Domain Reasoning; Four-Way Evaluation; Option A: source_id NULLable, NULL = editorial.

### SRC-0539 — StudyNexus V4.6 → V4.7 — Decision Ledger

- **Historical path:** `studynexus-v4.7-remediation-package/studynexus-v4.7/02-decision-ledger/DECISION-LEDGER.md`
- **Period/version:** V4.7 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document: 02 — Decision Ledger (V4.7 §76 item 4, §78 record format) Remediation Agent: Super Z (Remediation Executor) Authority: V4.6 → V4.7 Controlled Remediation & Independent Verification Prompt (81 sections) All FROZEN and APPROVED decisions originate from the V4.7 governance prompt itself — the prompt's 81 sections ARE the approved d Key sections: Ledger Status Summary; Decision Records (per V4.7 §78 record format); DEC-001 — Eliminate PostgreSQL public-search fallback; DEC-002 — Add projection-event / outbox architecture; DEC-003 — Two-stage human approval trust model; DEC-004 — Artifact-level import atomicity.

### SRC-0551 — StudyNexus V4.6 → V4.7 — Decision Dependency/Conflict Graph

- **Historical path:** `studynexus-v4.7-remediation-package/studynexus-v4.7/14-decision-graph/DECISION-DEPENDENCY-CONFLICT-GRAPH.md`
- **Period/version:** V4.7 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Document: 14 — Decision Dependency/Conflict Graph (V4.7 §76 item 6) This document visualizes the dependency and conflict relationships among all 53 decisions in the Decision Ledger (deliverable #2). Per V4.7 §4: "Supported finding relationships: dependson, conflictswith, duplicates, supersedes, derivedfrom." Decision relationships may als Key sections: Graph Legend; Decision Status Summary; Dependency Graph (text representation); Search/Projection Cluster (DEC-001, 002, 007, 039-053); Ingestion/Trust Cluster (DEC-003, 004, 019); Lifecycle/SEO Cluster (DEC-012, 013, 014, 015, 016, 017, 035).

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0486 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md` | `2cea05b2ef3eca41cd7ea37c6b5f9a3246d462eab178a2a4b385ea30335ee620` | 9 |  |
| SRC-0525 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance/FINAL-LINEAGE-SEMANTICS-RESOLUTION.md` | `aa4f2cded2f1b917dd23098df63c8db649fa6cfb760f1fb075550706b1b0b45a` | 8 |  |
| SRC-0539 | `studynexus-v4.7-remediation-package/studynexus-v4.7/02-decision-ledger/DECISION-LEDGER.md` | `34c55aa06df327aed2a002b0c50ea3980d1a1c6b19c2af7aa574541aa37b0070` | 1 |  |
| SRC-0551 | `studynexus-v4.7-remediation-package/studynexus-v4.7/14-decision-graph/DECISION-DEPENDENCY-CONFLICT-GRAPH.md` | `a1baad9dcc6fa0da753ad833ed36b742a3978e72af25855222fee34d1842037d` | 1 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
