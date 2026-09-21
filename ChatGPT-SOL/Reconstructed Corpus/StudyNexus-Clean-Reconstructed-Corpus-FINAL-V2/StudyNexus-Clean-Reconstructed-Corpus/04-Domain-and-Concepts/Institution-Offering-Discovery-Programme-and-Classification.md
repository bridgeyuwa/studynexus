---
corpus_id: COR-DOM-002
document_kind: SOURCE_RECONSTRUCTION
title: "Institution Offering, Discovery Programme and Classification"
category: domain-and-concepts
subcategory: programme-language
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 1
sources:
  - SRC-0555
related_resolutions:
  - R001
  - R002
related_open_questions:
  - NONE
---

# Institution Offering, Discovery Programme and Classification

**Purpose.** Central dossier for the deliberately separated offering, discovery, classification and historical ProgrammeInstance meanings.

## Authority and current status

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP004 — Institution Offering Information**: Represent and expose what an institution actually offers using source-faithful terminology and relevant real-world context. _Scope: MVP — explicit assumption required; strategic status: IN._
- **CAP005 — Programme / Discovery Curation**: Create and maintain StudyNexus-curated discovery concepts/classifications that help users find comparable or related institution offerings without rewriting source-faithful terminology. _Scope: MVP — explicit assumption required; strategic status: IN._

### Related canonical product concepts

- **CON005 — Institution Offering**: The source-faithful fact that a specific institution offers a named course/programme, preserving the institution’s own terminology and real-world offering context.
- **CON006 — Discovery Programme**: A StudyNexus-curated concept used to group or relate institution offerings for cross-institution discovery, comparison, facets and publication where useful.
- **CON008 — ProgrammeInstance**: Historical model introduced to capture concrete campus/delivery/year context under an abstract Programme. The contextual variation is real; this name is not required as product language.
- **CON009 — Qualification**: A credential/award context associated with study, distinct from subject/programme classification; terminology and external recognition vary by authority/jurisdiction.
- **CON017 — ELDS**: Educationally Less Developed States: a Nigeria-specific admission classification used where authoritative policy applies.
- **CON044 — Classification**: A StudyNexus-curated association that places source-faithful offerings or other information into discovery groupings, taxonomies or views without rewriting the underlying source-faithful fact.
- **CON045 — Facet**: A meaningful dimension by which users can narrow or explore education information, such as geography, institution type, offering/discovery classification, funding or other supported attributes.
- **CON051 — Postgraduate Pathway / Opportunity**: Information that helps users discover and understand postgraduate study options and relevant entry/pathway information.

### Relevant current resolutions

- **R001**: Use Institution Offering as preferred business/product term for the source-faithful institution-specific offering. Discovery Programme is a distinct StudyNexus-curated discovery concept. ProgrammeInstance remains historical technical/domain language for contextual variation and is not automatically a product term.
- **R002**: No. An Institution Offering may exist, be public/searchable and remain unclassified. Classification is a StudyNexus-curated discovery aid, not an existence/ingestion gate.

## Important boundaries

- Institution Offering ≠ Discovery Programme ≠ ProgrammeInstance.
- Bare “Programme” is overloaded and unsafe as an unqualified canonical term.
- Discovery classification is optional and does not determine factual existence.

## Historical evolution and source evidence

### SRC-0555 — StudyNexus Product Discovery: Global Institution Offerings, Programme Discovery, Classification, and SEO Landing Pages

- **Historical path:** `STUDYNEXUS_PROGRAMME_DISCOVERY_CLASSIFICATION-18th-Sept-2026.md`
- **Period/version:** UNKNOWN
- **Status in working corpus:** CURRENT_SUPPORTING
- **Near-duplicate family:** NONE
- **Contribution:** Status: Proposed architecture / product-discovery decision Scope: StudyNexus education discovery platform Primary concern: How StudyNexus can store institution programmes globally, handle inconsistent naming, support standardized discovery pages such as “Institutions Offering Computer Science in Nigeria”, and scale from Nigeria to Ghana, Key sections: 1. Executive Decision; 3.1 Institution; 3.2 InstitutionOffering; 4.1 You must define the universe in advance; 4.2 It turns ingestion into a classification project; 8.1 NUC CCMAS.

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0555 | `STUDYNEXUS_PROGRAMME_DISCOVERY_CLASSIFICATION-18th-Sept-2026.md` | `bac457f5a7eaeffc9dd92d73656a0a7ac9edb297a4e7e360b71274cba291a599` | 1 |  |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
