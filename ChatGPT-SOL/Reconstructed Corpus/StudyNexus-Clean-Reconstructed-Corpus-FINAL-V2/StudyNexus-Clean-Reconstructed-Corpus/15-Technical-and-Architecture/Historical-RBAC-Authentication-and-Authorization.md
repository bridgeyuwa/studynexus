---
corpus_id: COR-TECH-004
document_kind: SOURCE_RECONSTRUCTION
title: "Historical RBAC, Authentication and Authorization"
category: technical-and-architecture
subcategory: rbac
status: HISTORICAL
authority: TECHNICAL_HISTORY
temporal_scope: HISTORICAL
source_count: 1
sources:
  - SRC-0509
related_resolutions:
  - R003
  - R016
related_open_questions:
  - NONE
---

# Historical RBAC, Authentication and Authorization

**Purpose.** Preserves historical RBAC/auth decisions and rejections.

## Authority and current status

**Historical technical material only.** This dossier records prior design/implementation work. It is not a current technical architecture decision and must not pre-empt the future Product Language → DDD → architecture sequence.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP012 — Catchment / ELDS Information**: Explain admission catchment and Educationally Less Developed States (ELDS) rules in the context where they actually apply. _Scope: MVP — defined; strategic status: IN._
- **CAP016 — Evergreen Guides / Resources**: Provide longer-lived explanatory education content and structured resources that support decisions and understanding. _Scope: MVP — underspecified; strategic status: IN._

### Related canonical product concepts

- **CON010 — Admission**: Information about how a learner may enter an institution or offering, including published requirements, cutoffs, cycles and jurisdiction-specific policy factors.
- **CON016 — Catchment**: A geographic admission-policy consideration defined by an authoritative admission policy; it is not physical proximity and not a permanent institution attribute.
- **CON017 — ELDS**: Educationally Less Developed States: a Nigeria-specific admission classification used where authoritative policy applies.
- **CON024 — Education Authority / Regulator**: An external body whose authoritative decisions, registers or rules establish educational status, approval, accreditation, admission policy context or other regulated facts.
- **CON046 — Publication / Indexability**: The product decision about whether information or a discovery surface should be publicly exposed and/or made canonical/indexable for search engines; this is distinct from whether the underlying canonical fact exists.
- **CON056 — Ranking / Institutional Intelligence**: An unresolved possible product concept involving comparative institutional metrics, imported rankings, normalized observations or StudyNexus-derived intelligence. Product-capability membership is not established.

### Relevant current resolutions

- **R003**: Do not canonize universal Recognition. Use specific product meanings: Accreditation; Qualification Recognition; Institution Approval/Recognized Status; Regulator/Awarding Authority roles as applicable.
- **R016**: Do not canonize a universal Organization product concept. Use concrete actor roles and leave shared identity modeling to later evidence/DDD if a real cross-role business responsibility emerges.

## Historical evolution and source evidence

### SRC-0509 — Document 29: RBAC Decision — Authoritative Role List

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/29-rbac-decision.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Authority: Derived from Document 26 (file 26), Change R2 + §10 Status: Canonical — this document supersedes all prior RBAC role references Total: 11 roles (4 platform-global + 5 institution-scoped + 2 user-level) Critical: organizationmembers.role is a string column, NOT a FK to the Spatie roles table. This is per Document 26, Rec 8. Orga Key sections: 1. Role Inventory; 2. Mechanism; 3. OrganizationMember Pivot Model; 4. Policy Check Pattern; 5. Superseded Decisions.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0509 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/29-rbac-decision.md` | `992b84c7d063f6b4a9d7db3209d98030705a650c76ad81397f1cd23e391910f7` | 9 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
