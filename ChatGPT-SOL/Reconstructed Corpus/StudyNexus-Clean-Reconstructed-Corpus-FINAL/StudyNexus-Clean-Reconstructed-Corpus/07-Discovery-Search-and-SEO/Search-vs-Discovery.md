---
corpus_id: COR-SEARCH-001
title: "Search vs Discovery"
category: discovery-search-and-seo
subcategory: search-discovery
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 10
sources:
  - SRC-0009
  - SRC-0534
  - SRC-0535
  - SRC-0024
  - SRC-0101
  - SRC-0102
  - SRC-0129
  - SRC-0295
  - SRC-0306
  - SRC-0307
related_resolutions:
  - R001
  - R002
  - R012
  - R017
  - R020
related_open_questions:
  - NONE
---

# Search vs Discovery

**Purpose.** Separates product search/discovery behavior from search-engine implementation.

## Authority and current status

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP002 — Institution Discovery**: Help users find and explore educational institutions using meaningful criteria and geography. _Scope: MVP — defined; strategic status: IN._
- **CAP004 — Institution Offering Information**: Represent and expose what an institution actually offers using source-faithful terminology and relevant real-world context. _Scope: MVP — explicit assumption required; strategic status: IN._
- **CAP005 — Programme / Discovery Curation**: Create and maintain StudyNexus-curated discovery concepts/classifications that help users find comparable or related institution offerings without rewriting source-faithful terminology. _Scope: MVP — explicit assumption required; strategic status: IN._
- **CAP009 — Search**: Enable intentional retrieval of known or constrained education information using text and structured criteria. _Scope: MVP — defined; strategic status: IN._
- **CAP010 — Discovery / Exploration**: Enable users to explore alternatives, combinations, related opportunities and geographic options when they do not know the exact target. _Scope: MVP — defined; strategic status: IN._
- **CAP011 — Funding / Scholarship Discovery**: Inform users about scholarships, grants, bursaries, aid and other funding opportunities, explain criteria and hand off to providers where action is external. _Scope: MVP — defined; strategic status: IN._
- **CAP021 — Internship Information / Discovery**: Help users discover and understand internship/practical-experience opportunities relevant to education/career journeys. _Scope: MVP — underspecified; strategic status: IN._
- **CAP023 — Public Accounts / Persistent Identity**: Provide persistent user identity only where it supports valuable persistent/personal capabilities while preserving anonymous core discovery/search/comparison. _Scope: MVP — boundary requires refinement; strategic status: IN._
- **CAP024 — Personalization**: Adapt information/guidance to user context or persistent preferences without making personalization mandatory for core use. _Scope: MVP — underspecified; strategic status: IN._
- **CAP028 — Rankings / Institutional Intelligence**: Potential comparative ranking/metric/intelligence capability; product membership is not yet established by substantive discovery evidence. _Scope: GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY; strategic status: UNKNOWN._
- **CAP031 — External Transaction Execution**: Executing enrolment/admission applications, exam registration/payment/results/certification, scholarship award/disbursement, visa/government processing or provider transactions. _Scope: EXCLUDED; strategic status: OUT._

### Related canonical product concepts

- **CON001 — StudyNexus**: A Nigeria-first education information, discovery, knowledge and decision-support product that helps learners and advisers find, understand, compare and judge the trustworthiness of educational opportunities and related information.
- **CON006 — Discovery Programme**: A StudyNexus-curated concept used to group or relate institution offerings for cross-institution discovery, comparison, facets and publication where useful.
- **CON007 — Programme**: A historically overloaded word: at different times it meant an institution-specific course of study, an abstract programme/template, a discovery concept, or a contextual delivery instance.
- **CON009 — Qualification**: A credential/award context associated with study, distinct from subject/programme classification; terminology and external recognition vary by authority/jurisdiction.
- **CON010 — Admission**: Information about how a learner may enter an institution or offering, including published requirements, cutoffs, cycles and jurisdiction-specific policy factors.
- **CON012 — Eligibility**: The outcome/assessment of facts against rules in a particular context. Admission eligibility and funding eligibility are not assumed to be one universal rule system.
- **CON016 — Catchment**: A geographic admission-policy consideration defined by an authoritative admission policy; it is not physical proximity and not a permanent institution attribute.
- **CON019 — Funding Opportunity**: An educational funding opportunity such as scholarship, grant, bursary or aid, with benefits, criteria, dates, restrictions, provider and authoritative handoff.
- **CON031 — Education Service**: An education-related service or task a user may need to understand, locate or access, where StudyNexus primarily provides information, guidance and authoritative handoff rather than executing the external service.
- **CON036 — Canonical StudyNexus Information**: The current StudyNexus representation accepted for product use after applying the relevant evidence, normalization and review rules; it remains a representation of external reality, not ownership of the external authority's underlying fact.
- **CON037 — Derived Representation**: A representation calculated, normalized, classified or projected from canonical and/or curated StudyNexus information for discovery, search, comparison, publication or presentation.
- **CON039 — Freshness**: The degree to which information has been observed, verified or updated recently enough for its subject matter and decision context.

### Relevant current resolutions

- **R001**: Use Institution Offering as preferred business/product term for the source-faithful institution-specific offering. Discovery Programme is a distinct StudyNexus-curated discovery concept. ProgrammeInstance remains historical technical/domain language for contextual variation and is not automatically a product term.
- **R002**: No. An Institution Offering may exist, be public/searchable and remain unclassified. Classification is a StudyNexus-curated discovery aid, not an existence/ingestion gate.
- **R012**: Yes, they remain in current MVP consideration under the present scope rule because no current explicit exclusion removes them. However, anonymous core discovery must remain usable without an account; persistent identity, personalization and notification minimums are underspecified and need only be introduced where persistent user value requires them.
- **R017**: Keep distinct: Search = intentional retrieval; Discovery = exploration/curation; Publication/indexability = decision about public/indexed surfaces; Search infrastructure = serving mechanism. Selective indexation remains product principle.
- **R020**: After this canonicalization package, Product Discovery is READY WITH EXPLICIT ASSUMPTIONS for Ubiquitous Language. No true blocker remains; programme/offering distinction remains explicit and reversible; several MVP capabilities remain underspecified but bounded and traceable.

## Important boundaries

- Search ≠ Discovery.
- Search infrastructure ≠ product meaning.

## Historical evolution and source evidence

### SRC-0009 — Ranking - Product Discovery Additions 03-09-2026

- **Historical path:** `Ranking - Product Discovery Additions 03-09-2026.md`
- **Period/version:** 2026-09-03
- **Status in working corpus:** ARCHIVE_ONLY
- **Near-duplicate family:** NONE
- **Contribution:** No prose summary inferred; consult source headings/content through the immutable archive.

### SRC-0534 — StudyNexus — Product Experience Architecture

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-ARCHITECTURE.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-021
- **Contribution:** Status: UX DISCOVERY — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) + PRODUCT-EXPERIENCE-DISCOVERY.md + DISCOVERY-CLOSURE.md (which incorporates the original product-discovery challenge content) Constraint: No canonical documents modified. No implementation code produced. No UI designs created. StudyNexus Key sections: 1.1 Top-Level Experience Domains; 1.2 Experience Flow Model; 2.1 Primary Users (MVP); Prospective Student (SS3 / Secondary School Graduate); Undergraduate Student; Parent / Guardian.

### SRC-0535 — StudyNexus — Product Experience & UI/UX Discovery Report

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-DISCOVERY.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-022
- **Contribution:** Status: DISCOVERY ONLY — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) Constraint: No canonical documents modified. No implementation code produced. StudyNexus's canonical business and domain documents define what the platform knows and why it exists. They do not define what the product actually looks like Key sections: Journey 1: Programme Discovery (HIGHEST PRIORITY); Journey 2: Institution Discovery; Journey 3: Scholarship Discovery; Journey 4: Compare Programmes/Institutions; Journey 5: Assess Eligibility (Future); Journey NOT in MVP: Examination/Resource Discovery.

### SRC-0024 — StudyNexus — Product Experience Architecture

- **Historical path:** `StudyNexus-Independent-Audit-Package-v3/02-PRODUCT-EXPERIENCE/PRODUCT-EXPERIENCE-ARCHITECTURE.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Status: UX DISCOVERY — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) + PRODUCT-EXPERIENCE-DISCOVERY.md + PRODUCT-DISCOVERY-CHALLENGE.md + DISCOVERY-CLOSURE.md Constraint: No canonical documents modified. No implementation code produced. No UI designs created. StudyNexus is a search-first, information-rich, Key sections: 1.1 Top-Level Experience Domains; 1.2 Experience Flow Model; 2.1 Primary Users (MVP); Prospective Student (SS3 / Secondary School Graduate); Undergraduate Student; Parent / Guardian.

### SRC-0101 — StudyNexus — Product Experience Architecture

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/PRODUCT-EXPERIENCE-ARCHITECTURE.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-021
- **Contribution:** Status: UX DISCOVERY — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) + PRODUCT-EXPERIENCE-DISCOVERY.md + PRODUCT-DISCOVERY-CHALLENGE.md + DISCOVERY-CLOSURE.md Constraint: No canonical documents modified. No implementation code produced. No UI designs created. StudyNexus is a search-first, information-rich, Key sections: 1.1 Top-Level Experience Domains; 1.2 Experience Flow Model; 2.1 Primary Users (MVP); Prospective Student (SS3 / Secondary School Graduate); Undergraduate Student; Parent / Guardian.

### SRC-0102 — StudyNexus — Product Experience & UI/UX Discovery Report

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/PRODUCT-EXPERIENCE-DISCOVERY.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-022
- **Contribution:** Status: DISCOVERY ONLY — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) Constraint: No canonical documents modified. No implementation code produced. StudyNexus's canonical business and domain documents define what the platform knows and why it exists. They do not define what the product actually looks like Key sections: Journey 1: Programme Discovery (HIGHEST PRIORITY); Journey 2: Institution Discovery; Journey 3: Scholarship Discovery; Journey 4: Compare Programmes/Institutions; Journey 5: Assess Eligibility (Future); Journey NOT in MVP: Examination/Resource Discovery.

### SRC-0129 — StudyNexus — Product Discovery Challenge & Canonical Boundary Review

- **Historical path:** `StudyNexus-Independent-Audit-Package-v4/05-PRODUCT-STRATEGY/PRODUCT-DISCOVERY-CHALLENGE.md`
- **Period/version:** 2026-08-10
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Status: CHALLENGE REVIEW — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) + PRODUCT-EXPERIENCE-DISCOVERY.md Constraint: No canonical documents modified. No implementation code produced. No new discovery document created. Before addressing the GAPs, a material inconsistency exists between canonical documents Key sections: 1.1 ProgrammeStatus / InstitutionStatus Mismatch; 3.1 Analysis of Distinct State Concepts; 3.2 Why These Must Not Collapse Into One Field; 3.3 Smallest Correct Model; 4.1 Field-by-Field Analysis; 4.1.1 Admission Cut-off Changes.

### SRC-0295 — StudyNexus — Canonical Update Report

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-UPDATE-REPORT.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-014
- **Contribution:** Authority: Approved discovery closure (DISCOVERY-CLOSURE.md) — 12 canonical changes Scope: Canonical correction only — no new decisions, no architecture redesign, no code Documents NOT modified: 01-business.md, 02-decisions.md, 06-data-acquisition.md The handoff contract is implementation-neutral. It defines the information StudyNexus nee Key sections: 1. The 12 Changes Applied; 2. Documents Affected; 3. Cross-References Updated; 4. Final Canonical Counts; 5. Final Platform Versions; 6. Final Product Scope.

### SRC-0306 — StudyNexus — Product Experience Architecture

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-ARCHITECTURE.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-021
- **Contribution:** Status: UX DISCOVERY — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) + PRODUCT-EXPERIENCE-DISCOVERY.md + PRODUCT-DISCOVERY-CHALLENGE.md + DISCOVERY-CLOSURE.md Constraint: No canonical documents modified. No implementation code produced. No UI designs created. StudyNexus is a search-first, information-rich, Key sections: 1.1 Top-Level Experience Domains; 1.2 Experience Flow Model; 2.1 Primary Users (MVP); Prospective Student (SS3 / Secondary School Graduate); Undergraduate Student; Parent / Guardian.

### SRC-0307 — StudyNexus — Product Experience & UI/UX Discovery Report

- **Historical path:** `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-DISCOVERY.md`
- **Period/version:** V4.3 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-022
- **Contribution:** Status: DISCOVERY ONLY — awaiting human approval Authoritative baseline: 6 canonical documents (01–06) Constraint: No canonical documents modified. No implementation code produced. StudyNexus's canonical business and domain documents define what the platform knows and why it exists. They do not define what the product actually looks like Key sections: Journey 1: Programme Discovery (HIGHEST PRIORITY); Journey 2: Institution Discovery; Journey 3: Scholarship Discovery; Journey 4: Compare Programmes/Institutions; Journey 5: Assess Eligibility (Future); Journey NOT in MVP: Examination/Resource Discovery.

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0009 | `Ranking - Product Discovery Additions 03-09-2026.md` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` | 1 |  |
| SRC-0534 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-ARCHITECTURE.md` | `ff219379f7e9adf5ae7ea10c2c214080884ff263e8c8532bf33023e555a9fd6a` | 1 | NDG-021 |
| SRC-0535 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-DISCOVERY.md` | `3a29c765bf52fc7a7058010094c85956efe3e9f9a3b97d2b093fb32db2d927ea` | 1 | NDG-022 |
| SRC-0024 | `StudyNexus-Independent-Audit-Package-v3/02-PRODUCT-EXPERIENCE/PRODUCT-EXPERIENCE-ARCHITECTURE.md` | `e7cb8c96a4930602c1dcf2a9857e8237908454d3b35105098f2f6163f58a49c9` | 2 |  |
| SRC-0101 | `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/PRODUCT-EXPERIENCE-ARCHITECTURE.md` | `2a6c92175b94cc4936591ac321fb357e4878c885d18c651051eeb8863e7158f5` | 1 | NDG-021 |
| SRC-0102 | `StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE/PRODUCT-EXPERIENCE-DISCOVERY.md` | `c1b7d7aeec13283a87a4104c37d43cd1a686b9bced49dc6fe10f012f30b29d34` | 2 | NDG-022 |
| SRC-0129 | `StudyNexus-Independent-Audit-Package-v4/05-PRODUCT-STRATEGY/PRODUCT-DISCOVERY-CHALLENGE.md` | `167f7c10fe1b72837a6318c791a3d9c1642846648ce4664824473a5a17de688c` | 2 |  |
| SRC-0295 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/CANONICAL-UPDATE-REPORT.md` | `969405471e70428a343fa87c94f939130e87ed983b62ab893b94e8b321ac063c` | 5 | NDG-014 |
| SRC-0306 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-ARCHITECTURE.md` | `829ae23a3ae3589a04952068b99fdb223ebc6d1bfdc3f1c33214bbdbd79e6184` | 5 | NDG-021 |
| SRC-0307 | `StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-DISCOVERY.md` | `cff3b2ea4409afa97af6c4f7778f49e8c13ce6a50eddde4b32d423ec6dc091e6` | 5 | NDG-022 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
