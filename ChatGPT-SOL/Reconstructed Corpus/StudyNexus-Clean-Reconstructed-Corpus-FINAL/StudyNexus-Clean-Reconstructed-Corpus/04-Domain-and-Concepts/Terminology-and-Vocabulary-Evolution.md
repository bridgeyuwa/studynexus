---
corpus_id: COR-DOM-004
title: "Terminology and Vocabulary Evolution"
category: domain-and-concepts
subcategory: vocabulary
status: HISTORICAL
authority: HISTORICAL_SUPPORT
temporal_scope: HISTORICAL
source_count: 3
sources:
  - SRC-0519
  - SRC-0485
  - SRC-0291
related_resolutions:
  - R001
  - R002
  - R003
  - R010
  - R016
  - R020
related_open_questions:
  - NONE
---

# Terminology and Vocabulary Evolution

**Purpose.** Tracks overloaded and changed terminology without rewriting historical language as though it were current.

## Authority and current status

This dossier primarily preserves historical/evolutionary evidence. Where it touches current product meaning, the accepted Product Discovery governs.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP004 — Institution Offering Information**: Represent and expose what an institution actually offers using source-faithful terminology and relevant real-world context. _Scope: MVP — explicit assumption required; strategic status: IN._
- **CAP005 — Programme / Discovery Curation**: Create and maintain StudyNexus-curated discovery concepts/classifications that help users find comparable or related institution offerings without rewriting source-faithful terminology. _Scope: MVP — explicit assumption required; strategic status: IN._
- **CAP019 — Transfer Information**: Help users understand transfer options, requirements and relevant institution/programme constraints. _Scope: MVP — underspecified; strategic status: IN._

### Related canonical product concepts

- **CON002 — Institution**: A recognized educational institution represented in StudyNexus. Institution identity is distinct from arbitrary related organizations and from a campus/location.
- **CON003 — Campus**: A named institutional location/branch context where real offering, admission, service or accreditation facts may vary.
- **CON004 — Institution Relationship**: An explicit relationship between institutions or education actors, such as affiliation, degree-granting relationship, historical relation or association; relationship does not automatically imply ownership.
- **CON005 — Institution Offering**: The source-faithful fact that a specific institution offers a named course/programme, preserving the institution’s own terminology and real-world offering context.
- **CON006 — Discovery Programme**: A StudyNexus-curated concept used to group or relate institution offerings for cross-institution discovery, comparison, facets and publication where useful.
- **CON007 — Programme**: A historically overloaded word: at different times it meant an institution-specific course of study, an abstract programme/template, a discovery concept, or a contextual delivery instance.
- **CON008 — ProgrammeInstance**: Historical model introduced to capture concrete campus/delivery/year context under an abstract Programme. The contextual variation is real; this name is not required as product language.
- **CON009 — Qualification**: A credential/award context associated with study, distinct from subject/programme classification; terminology and external recognition vary by authority/jurisdiction.
- **CON014 — Admission Cycle**: A time-bounded admission period/context in which requirements, cutoffs and policies may differ.
- **CON015 — Cut-off Mark**: A published threshold applicable in an admission context and time period; it may vary by institution/offering/cycle.
- **CON017 — ELDS**: Educationally Less Developed States: a Nigeria-specific admission classification used where authoritative policy applies.
- **CON020 — Scholarship**: A type of Funding Opportunity where the evidence/provider uses scholarship terminology.

### Relevant current resolutions

- **R001**: Use Institution Offering as preferred business/product term for the source-faithful institution-specific offering. Discovery Programme is a distinct StudyNexus-curated discovery concept. ProgrammeInstance remains historical technical/domain language for contextual variation and is not automatically a product term.
- **R002**: No. An Institution Offering may exist, be public/searchable and remain unclassified. Classification is a StudyNexus-curated discovery aid, not an existence/ingestion gate.
- **R003**: Do not canonize universal Recognition. Use specific product meanings: Accreditation; Qualification Recognition; Institution Approval/Recognized Status; Regulator/Awarding Authority roles as applicable.
- **R010**: Examination information/schedules are MVP/current scope. The exact capability boundary and schedule vocabulary are underspecified/proposed. Practice/attempts/scoring/progress are a distinct current deferral.
- **R016**: Do not canonize a universal Organization product concept. Use concrete actor roles and leave shared identity modeling to later evidence/DDD if a real cross-role business responsibility emerges.
- **R020**: After this canonicalization package, Product Discovery is READY WITH EXPLICIT ASSUMPTIONS for Ubiquitous Language. No true blocker remains; programme/offering distinction remains explicit and reversible; several MVP capabilities remain underspecified but bounded and traceable.

## Historical evolution and source evidence

### SRC-0519 — StudyNexus V4.6 — Domain Glossary

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/GLOSSARY.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-003
- **Contribution:** Purpose: Define key domain terms for the implementation team. This glossary is derived from the V4.6 Canonical documents (Tier 1) and supersedes the historical glossary in archive/02-glossary.md. Key sections: Core Domain Entities; Infrastructure Entities; V4.6-Specific Concepts; Value Objects; Enums (17); Nigerian Education Context.

### SRC-0485 — StudyNexus — Glossary

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/02-glossary.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** These concepts were introduced during workflow discovery. They become canonical (promoted to the main glossary) only when they recur across multiple workflows or personas. Promoting a concept requires explicit approval. Key sections: Candidate Business Concepts.

### SRC-0291 — StudyNexus V4.2 — Domain Glossary

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/GLOSSARY.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-003
- **Contribution:** Purpose: Define key domain terms for the implementation team. This glossary is derived from the V4.2 Canonical documents (Tier 1) and supersedes the historical glossary in archive/02-glossary.md. Key sections: Core Domain Entities; Infrastructure Entities; V4.2-Specific Concepts; Value Objects; Enums (17); Nigerian Education Context.

## Contradictions, supersession and interpretation

Historical documents in this subject may describe decisions that were later amended, superseded, rejected, or simply overtaken by the accepted Product Discovery. Their presence is evidence of evolution, not automatic current authority. Material current-product conflicts are resolved by the accepted Product Discovery and Resolution Ledger; unresolved matters remain explicit rather than flattened.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0519 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/GLOSSARY.md` | `b748543350d18a794a6914cd5d4e4e2db0b3837886d47284d7f53a71ec290454` | 1 | NDG-003 |
| SRC-0485 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/02-glossary.md` | `a64bc423478e4c75cc5459bd69f0961c61f6c9d0155a163db003f1e9178b20bc` | 8 |  |
| SRC-0291 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/GLOSSARY.md` | `b6ebaf6e6501965ab219d2f3ceb3de7d3d51c9ebb6b0e1454b02e1226d54e680` | 5 | NDG-003 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
