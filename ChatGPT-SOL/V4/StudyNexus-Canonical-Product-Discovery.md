# StudyNexus — Canonical Product Discovery

**Status:** PRODUCTION-READY WITH EXPLICIT ASSUMPTIONS — current authoritative product-discovery baseline  
**Canonicalization date:** 21 September 2026  
**Next intended stage:** Ubiquitous Language  
**Supersedes as a current product description:** the historical reconstruction narrative, while preserving that reconstruction as evidence and traceability material.

---

## How to read this document

This document answers **what StudyNexus currently is as a product**. It does not prescribe bounded contexts, Laravel modules, aggregates, database tables, search schemas, repositories, events, routes, APIs, packages, or infrastructure topology.

Four dimensions that were historically blurred are intentionally kept separate:

1. **Current MVP scope** — whether the capability belongs to the product now.
2. **Definition maturity** — how precisely the capability has been defined.
3. **First vertical slice** — whether it is required in the first end-to-end implementation/release slice.
4. **Capability minimum** — whether the smallest useful version of that capability is already specified.

A capability may therefore be **inside the current MVP and still be underspecified, outside the first vertical slice, and awaiting definition of its capability minimum**.

### Current MVP scope rule

**Current MVP scope is defined by current product consideration, not by historical delivery-phase labels. Anything still under consideration remains in MVP unless evidence establishes a valid reason for exclusion or current deferral. A capability may be underspecified and still remain in MVP.**

**Classification:** this is a **current adopted product-owner scope governance rule**, not an assumption about the product. [Trace: D021; R004]

Historical labels such as *Phase 2*, *Phase 3*, *Future*, *Later*, *Deferred* and *Post-MVP* remain useful evidence about earlier sequencing, but they are not present scope decisions by themselves. [Trace: C041, C042, C070–C078; D021; R004]

---

# Part I — Product Definition

## 1. Canonical product statement

**StudyNexus is a Nigeria-first education information, discovery, knowledge and decision-support product that helps learners and their advisers find, understand, compare and judge the trustworthiness of educational opportunities, requirements, services and related information.**

Its fundamental product loop is:

```text
find / discover
→ understand
→ compare
→ verify trust/context
→ decide what to do next
→ hand off to the authoritative institution, provider or public body where action occurs
```

StudyNexus is primarily an **information and decision-support product**, not an enrolment, application-processing, examination-operation, scholarship-award, payment, visa-processing or education-service transaction platform. [Trace: C001, C011, C013, C014, C039, C048, C067; D001, D018]

## 2. Product category and value proposition

StudyNexus combines five durable product roles:

- **Education knowledge:** structured, maintainable information rather than scattered pages and notices.
- **Discovery:** exploration across institutions, offerings, pathways, geography and related opportunities.
- **Search:** efficient retrieval when the user has a known or constrained target.
- **Decision support:** comparison, admissions understanding, self-assessment and contextual explanation.
- **Information quality:** provenance, review, conflict handling and controlled correction so users can judge whether information deserves trust.

The product value is not merely “more data.” It is the reduction of work users currently perform themselves when they search multiple sources, reconcile different terminology, compare incompatible descriptions, decide which source is reliable and determine what action should follow. [Trace: C005–C010, C013, C026, C031, C067]

## 3. Geographic strategy

StudyNexus is **Nigeria-first in public delivery**, but its product concepts should not assume that Nigerian administrative, qualification, accreditation or admission terminology is universal. Jurisdiction-aware semantics are a current product principle even though multi-country public rollout is not part of the current initial delivery. [Trace: C038, C051, C057, C084; D005; R014]

## 4. What StudyNexus is not

Under the current product boundary, StudyNexus is not:

- the institution that admits or enrols the learner;
- an examination registration, payment, results or certification operator;
- a scholarship selection, award or disbursement operator;
- a visa or government-processing service;
- a provider marketplace or transaction processor;
- an institution/provider self-service platform;
- a public developer/API platform;
- a full social network merely because it accepts user reports;
- a system in which AI, scrapers or user submissions silently become canonical truth;
- a generator that makes every filter combination an indexable SEO page;
- a multi-country public product at initial rollout.

Where useful, StudyNexus may explain, compare, route or hand off to an authoritative external actor. That handoff does not transfer ownership of the external transaction to StudyNexus. [Trace: C012, C014, C025, C030, C035, C039, C048, C067, C084; D012–D013, D018; R013–R014, R017]

---

# Part II — Current Problem Space

The historical five-problem model remains the best-supported top-level problem structure. It is retained because the later corpus extends it rather than materially displacing it.

## 5. Fragmentation

Education information is distributed across institutional sites, regulators, examination bodies, funding providers, announcements, editorial material and other sources. Users are forced to assemble a connected picture manually.

**Affected users:** prospective students, current undergraduates, parents/guardians and guidance advisers.

**StudyNexus response:** collect and structure decision-relevant information while preserving where it came from and who actually owns the underlying fact. [Trace: C005, C006, C013]

## 6. Trust

Users cannot safely assume that all discovered information is current, authoritative or mutually consistent. Missing information can be mistaken for non-existence; copied pages can be stale; different sources can conflict.

**StudyNexus response:** separate source evidence, candidate information, accepted canonical representation and derived views; preserve provenance; route uncertain changes through review; avoid equating absence with deletion. [Trace: C007, C025–C030; R018–R019]

## 7. Discoverability

Users do not always know the exact institution or exact programme title they need. Institution-specific terminology and heterogeneous education structures make pure keyword lookup insufficient.

**StudyNexus response:** support both known-target search and broader discovery through classifications, facets, geography, related possibilities and curated discovery concepts where justified. [Trace: C008, C023, C024, C031, C053, C082, C083]

## 8. Comparison

Users often need to compare institutions, offerings, admission requirements, costs or other decision-relevant attributes that are described inconsistently across sources.

**StudyNexus response:** provide comparable representations and comparison behavior without pretending that all source concepts are naturally identical. [Trace: C009, C071; R004]

## 9. Accessibility

The useful information may exist but remain difficult to understand, navigate, access on common devices, or interpret in a decision context.

**StudyNexus response:** present information in structured, understandable journeys; provide explanatory content and task-oriented access paths, not only raw source links. [Trace: C010, C056]

### Evidence-quality note

These problems are strongly repeated in stakeholder/product-discovery material, but the corpus contains **little completed primary-user research** such as interviews, surveys, usability studies or behavioral analytics. They are therefore well-established **StudyNexus product hypotheses/decisions**, not claims of independently validated market demand. [Trace: C054, C055]

---

# Part III — Users, Jobs and Outcomes

## 10. Canonical user groups

The strongest historical user model contains four meaningful groups:

1. **Secondary students / recent graduates** — choosing institutions, offerings and admission paths; understanding requirements, funding, examinations and next steps.
2. **Current undergraduates** — navigating their current educational journey, transfers, funding, internships, postgraduate possibilities and career direction.
3. **Parents / guardians** — supporting education decisions with understandable, trustworthy information.
4. **Guidance counsellors / teachers / advisers** — helping multiple learners interpret options and requirements.

The corpus historically prioritized prospective learners, but the current product baseline retains the other evidenced groups rather than shrinking the product to the first vertical slice. [Trace: C003, C004, C015, C072]

Institutional staff, regulators, examination bodies, scholarship providers, publishers and service providers are primarily **information authorities/providers or external actors**, not automatically public end-user personas of the current product.

## 11. Core user jobs

Across the evidence, users need to:

- discover plausible institutions and study opportunities;
- understand what an institution actually offers;
- make sense of differing programme terminology;
- compare alternatives;
- understand admission requirements, cut-offs, Post-UTME and geographic policy;
- estimate whether their declared circumstances appear to satisfy published requirements;
- find funding opportunities and understand criteria;
- understand time-sensitive education changes;
- find official education services/access points;
- understand examination information and schedule changes;
- find stable explanatory guides/resources;
- understand career, transfer, postgraduate and internship pathways;
- assess whether information is current, sourced and trustworthy;
- know when StudyNexus is explaining information versus when an external authority must perform the next action.

## 12. Intended user outcomes

StudyNexus is intended to help users reach decisions with:

- less fragmented research;
- less uncertainty about terminology and context;
- more comparable alternatives;
- clearer admission/funding/exam/service information;
- clearer provenance and trust context;
- less risk of treating stale or unverified information as authoritative;
- clearer next-action handoffs.

These are intended product outcomes. The corpus does not establish quantified outcome targets or market traction.

---

# Part IV — Product Principles

The following principles are current product rules or strongly supported product constraints.

## P1 — Preserve source reality

StudyNexus should not rewrite an institution's actual offering terminology merely to fit a global catalogue. Normalization for discovery must remain distinguishable from source-faithful representation. [C023, C024, C081–C083; D020, D022; R001–R002]

## P2 — Canonical information is not source evidence

A source, a candidate change, the current accepted StudyNexus representation and a derived discovery/search representation are different things. [C026, C027, C030, C034; R018]

## P3 — MISSING ≠ DELETE

The absence of a fact from one source does not by itself establish that the real-world fact ceased to exist. Missing information is evidence requiring interpretation, not an automatic deletion command. [C029; D013]

## P4 — AI, scrapers and user reports may suggest; they do not silently decide truth

Automated extraction and public contribution are inputs to information quality. Acceptance into canonical StudyNexus information requires the applicable validation/review rules. [C025, C027, C030; D012]

## P5 — Search and discovery are different user behaviors

Search is intentional retrieval of a known or constrained target. Discovery is exploration of possibilities, alternatives and combinations. Both are current product capabilities. [C031; R017]

## P6 — Discovery classification must not gate factual existence

An institution offering may exist in StudyNexus even when it has not been mapped to a Discovery Programme or another curated discovery classification. [C023, C024, C082; D020, D022; R002]

## P7 — Public/indexable is not synonymous with canonical

Canonical information may exist without an indexable landing page. Selective publication protects users and search quality from arbitrary/thin combinations. [C035, C065; R017]

## P8 — Jurisdiction matters

Geography, admission terminology, accreditation, qualifications and education structures may vary by country/authority. Nigeria-first delivery must not turn Nigerian terms into false universals. [C038, C051, C057, C084; R014]

## P9 — Context beats premature universal abstractions

Words such as Programme, Eligibility, Recognition, Organization, Status, Source and Publication can hide distinct meanings. The product must preserve those distinctions rather than forcing reuse for its own sake.

## P10 — External action remains external unless explicitly adopted

StudyNexus may inform, explain, compare and route users to a provider; it does not thereby become the institution, regulator, examiner, scholarship provider or government service. [C039, C048, C067]

## P11 — Anonymous core remains viable

Core discovery, search, comparison and information access must not depend on a public account merely because persistent/personal capabilities are being considered. [C016; D003; R012]

## P12 — Technology does not define the product

Laravel, PostgreSQL, Typesense, Redis, JSONB, repositories, queues, projections and folder structures are implementation/architecture matters. They do not establish product need by existing in historical technical documents.

---

# Part V — Canonical User Journeys

## 13. Institution discovery and evaluation

**Intent:** find institutions that plausibly fit the learner's constraints and understand whether they are worth considering.

**Needs:** institution identity, location, type/characteristics, offerings, regulatory/trust status, relevant content and discovery facets.

**Product boundary:** StudyNexus informs and compares; the institution remains authoritative for its operations and actual enrolment.

**MVP:** defined; core first-vertical-slice journey. [C001, C008, C013, C053]

## 14. Institution Offering / programme discovery

**Intent:** find what institutions actually offer and explore related/comparable study possibilities.

**Needs:** source-faithful Institution Offering plus optional StudyNexus-curated Discovery Programme/classification.

**Key rule:** an offering can exist without classification.

**MVP:** explicit assumption required; core first-slice/supporting journey. [C023, C024, C081–C083; R001–R002]

## 15. Admissions research and self-assessment

**Intent:** understand requirements, cut-offs, Post-UTME, catchment/ELDS and other applicable admission conditions; assess apparent fit.

**Boundary:** StudyNexus explains published rules and may support self-assessment; the authoritative institution/JAMB/other body makes the actual admission/eligibility decision.

**MVP:** defined. Fully automated deterministic eligibility evaluation remains currently deferred. [C017, C036, C037, C047; D004, D014, D017; R015]

## 16. Comparison

**Intent:** compare plausible choices using decision-relevant information.

**MVP:** defined. A dedicated historical “Compare” view was sequencing, not a current scope prerequisite. [C009, C071; R004]

## 17. Funding / scholarship discovery

**Intent:** find relevant funding, understand criteria/benefits and move to the provider when application/selection occurs.

**Boundary:** StudyNexus is information/discovery/matching/handoff, not award management.

**MVP:** defined. [C039–C041; D015]

## 18. Catchment / ELDS understanding

**Intent:** understand geographic admission-policy implications in the correct institution/programme/cycle context.

**MVP:** defined. [C036, C037; D014]

## 19. News / current education information

**Intent:** understand a recent change or announcement.

**Boundary:** News owns the editorial report, not the durable canonical fact it may describe.

**MVP:** defined. [C045, C046, C076; D016]

## 20. Education Services & Access

**Intent:** identify a service/task, understand requirements/access and reach the authoritative service point/provider.

**Boundary:** StudyNexus informs/guides/hands off; it does not automatically execute the service.

**MVP:** defined at product-boundary level; detailed service taxonomy still refinable. [C048, C049, C077; D018]

## 21. Examination information

**Intent:** understand an examination and relevant time-specific administration/schedule changes.

**MVP:** inside current scope but capability boundary requires refinement. The September Product→Administration→Schedule Event vocabulary is useful evidence, not yet a fully ratified product model.

**Current deferral:** practice questions, attempts, scoring and learner progress remain a distinct deferred capability. [C043, C044, C078; D019; R010]

## 22. Evergreen information / guides / resources

**Intent:** understand stable or slowly changing education topics, processes and choices.

**MVP:** underspecified but in scope. Historical Shelves→Books→optional Chapters→Pages material is evidence of content needs, not a binding implementation hierarchy. [C046, C075; R011]

## 23. Career pathways

**Intent:** understand plausible career directions associated with education choices.

**MVP:** underspecified but in scope under the current scope rule; requires renewed user/problem and evidence-model research. [C061, C073; R006]

## 24. Undergraduate current journey / WF7

**Intent:** support a current student's ongoing education decisions rather than only pre-admission discovery.

**MVP:** current and historically approved; not first-slice by current evidence. [C015, C072; R005]

## 25. Transfers

**Intent:** understand movement between institutions/programmes/pathways and applicable requirements.

**MVP:** underspecified but in scope. StudyNexus does not execute the transfer. [C062, C074; R007]

## 26. Postgraduate pathways

**Intent:** discover and understand postgraduate study opportunities and entry paths.

**MVP:** underspecified but in scope. [C062, C074; R007]

## 27. Internships

**Intent:** find/understand practical-experience opportunities associated with the learner's current education/career journey.

**MVP:** underspecified but in scope. Application/placement execution is not established. [C062, C074; R007]

## 28. User contribution / correction

**Intent:** report missing, stale or wrong information.

**Boundary:** contribution becomes evidence/candidate input; it never becomes canonical truth by submission alone.

**MVP:** defined at information-quality/input level. A full social/community product is not established. [C025, C063; R008]

## 29. Persistent identity, personalization and notifications

These capabilities remain **inside current MVP consideration** because historical sequencing is not current exclusion evidence.

- Public/persistent account: MVP, boundary requires refinement.
- Personalization: MVP, underspecified.
- Notifications: MVP, underspecified.

Anonymous core discovery/search/comparison remains a product rule. None is required in the first vertical slice by current evidence. [C016; D003, D021; R012]

## 30. Rankings / institutional intelligence

The corpus does **not** establish whether this is genuinely part of the product. The dedicated September ranking-discovery file contains no substantive discovery, while other ranking references are insufficient to prove a user problem or capability.

**Status:** genuinely unresolved whether product capability. This is not an exclusion and not an MVP commitment. [C050, C085; R009]

---

# Part VI — Canonical Capability and Current MVP Model

## 31. Capability register

The machine-readable `StudyNexus-Canonical-Capability-Scope.csv` is authoritative for mechanical scope auditing. The following is its human-readable summary.

| ID | Capability | Current MVP scope | Definition maturity | First-slice relation | Confidence | Trace |
| --- | --- | --- | --- | --- | --- | --- |
| CAP001 | Trusted Education Information Management | MVP — defined | well defined | FOUNDATIONAL_SUPPORT | HIGH | C005 C007 C013 C025 C026 C027 C029 C030 C067 R018 R019 |
| CAP002 | Institution Discovery | MVP — defined | well defined | FIRST_VERTICAL_SLICE | HIGH | C001 C008 C013 C053 D001 R017 |
| CAP003 | Institution Information | MVP — defined | well defined | FIRST_VERTICAL_SLICE | HIGH | C001 C006 C007 C013 C064 D001 R003 |
| CAP004 | Institution Offering Information | MVP — explicit assumption required | dependent on explicit assumption | FIRST_VERTICAL_SLICE | MEDIUM-HIGH | C018 C021 C023 C024 C081 C082 C083 D007 D020 D022 R001 R002 |
| CAP005 | Programme / Discovery Curation | MVP — explicit assumption required | dependent on explicit assumption | SUPPORTS_FIRST_VERTICAL_SLICE | MEDIUM-HIGH | C023 C024 C081 C082 C083 D020 D022 R001 R002 |
| CAP006 | Admissions Information | MVP — defined | well defined | FIRST_VERTICAL_SLICE | HIGH | C014 C022 C036 C037 C047 D008 D014 D017 R015 |
| CAP007 | Requirements and Self-Assessment | MVP — defined | partially defined | SUPPORTS_FIRST_VERTICAL_SLICE | HIGH | C017 C036 C047 D004 R015 |
| CAP008 | Comparison | MVP — defined | partially defined | NOT_REQUIRED_AS_DEDICATED_FIRST_SLICE_VIEW | HIGH | C009 C013 C014 C071 R004 |
| CAP009 | Search | MVP — defined | well defined | FIRST_VERTICAL_SLICE | HIGH | C008 C013 C031 C032 C034 D010 R017 |
| CAP010 | Discovery / Exploration | MVP — defined | well defined | FIRST_VERTICAL_SLICE | HIGH | C008 C013 C031 C053 C067 R017 |
| CAP011 | Funding / Scholarship Discovery | MVP — defined | partially defined | NOT_FIRST_VERTICAL_SLICE | HIGH | C039 C040 C041 D015 R004 |
| CAP012 | Catchment / ELDS Information | MVP — defined | well defined | NOT_FIRST_VERTICAL_SLICE | HIGH | C036 C037 D014 R015 |
| CAP013 | News / Time-Sensitive Education Information | MVP — defined | well defined | NOT_FIRST_VERTICAL_SLICE | HIGH | C045 C046 C076 D016 R004 |
| CAP014 | Education Services & Access | MVP — defined | partially defined | NOT_FIRST_VERTICAL_SLICE | HIGH | C048 C049 C077 D018 R004 R016 |
| CAP015 | Examination Information / Schedules | MVP — boundary requires refinement | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM | C043 C044 C078 D019 R010 |
| CAP016 | Evergreen Guides / Resources | MVP — underspecified | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM | C046 C075 R011 |
| CAP017 | Career Pathways | MVP — underspecified | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM | C061 C073 R006 |
| CAP018 | Undergraduate Current Journey / WF7 | MVP — defined | partially defined | NOT_FIRST_VERTICAL_SLICE | HIGH | C015 C072 R005 |
| CAP019 | Transfer Information | MVP — underspecified | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM | C062 C074 R007 |
| CAP020 | Postgraduate Pathways | MVP — underspecified | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM | C062 C074 R007 |
| CAP021 | Internship Information / Discovery | MVP — underspecified | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM | C062 C074 R007 |
| CAP022 | Community/User-Contributed Information Input | MVP — defined | partially defined | NOT_FIRST_VERTICAL_SLICE | HIGH | C025 C063 D012 R008 |
| CAP023 | Public Accounts / Persistent Identity | MVP — boundary requires refinement | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM | C016 D003 D021 R012 |
| CAP024 | Personalization | MVP — underspecified | underspecified | NOT_FIRST_VERTICAL_SLICE | LOW-MEDIUM | C016 D003 D021 R012 |
| CAP025 | Notifications | MVP — underspecified | underspecified | NOT_FIRST_VERTICAL_SLICE | LOW-MEDIUM | C016 D021 R012 |
| CAP026 | Accreditation / Approval / Qualification-Recognition Information | MVP — boundary requires refinement | underspecified | NOT_FIRST_VERTICAL_SLICE | MEDIUM-HIGH | C064 C079 C080 D023 R003 |
| CAP027 | Internationalization Semantics | NOT APPLICABLE — product principle / cross-cutting constraint | partially defined | NOT_APPLICABLE — CROSS_CUTTING | HIGH | C038 C051 C057 C084 D005 R014 |
| CAP028 | Rankings / Institutional Intelligence | GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY | genuinely unresolved | NOT_ESTABLISHED | LOW | C050 C085 R009 |
| CAP029 | Institution / Provider Self-Service | EXCLUDED | well defined | NOT_APPLICABLE | HIGH | C012 D002 D013 R013 |
| CAP030 | Public API / Developer Platform | EXCLUDED | well defined | NOT_APPLICABLE | HIGH | C012 D013 R013 |
| CAP031 | External Transaction Execution | EXCLUDED | well defined | NOT_APPLICABLE | HIGH | C014 C039 C048 C067 D001 D018 R013 |
| CAP032 | Multi-Country Public Rollout | EXCLUDED | well defined | NOT_APPLICABLE | HIGH | C038 C057 C084 D005 R014 |
| CAP033 | Automated Eligibility Evaluation | CURRENTLY DEFERRED — evidence required | partially defined | NOT_FIRST_VERTICAL_SLICE | HIGH | C017 D004 R015 |
| CAP034 | Examination Practice / Assessment | CURRENTLY DEFERRED — evidence required | underspecified | NOT_FIRST_VERTICAL_SLICE | HIGH | C044 C075 D019 R010 |
| CAP035 | Full Social / Community Product | GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY | genuinely unresolved | NOT_ESTABLISHED | LOW-MEDIUM | C025 C063 R008 |

### Strategic MVP interpretation

All rows with `record_type = PRODUCT_CAPABILITY` and a current scope status beginning **MVP —** belong to the strategic MVP even when their definition is incomplete. **CAP027 is retained for auditability as a `PRODUCT_PRINCIPLE / CROSS_CUTTING_CONSTRAINT`, not counted as a product capability.** This yields **26 current-MVP product-capability rows** without changing the underlying product scope. Capabilities marked **CURRENTLY DEFERRED** have positive deferral evidence. Capabilities marked **EXCLUDED** have evidence-backed product-boundary exclusions. **GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY** means the evidence cannot yet establish product membership.

### First vertical slice

The historical first vertical slice remains a delivery sequencing device, centered on discovery/search and core institution/offering/admissions information. It is **not** the definition of strategic MVP.

### Capability minimum

Some current-MVP capabilities still need a smallest useful product definition before implementation planning. That maturity gap is retained explicitly rather than misclassified as scope exclusion.

---

# Part VII — Business/Product Concepts and Contextual Language

## 32. Programme / Offering vocabulary

This is the most important explicit assumption carried into the next stage.

### Institution Offering

Preferred current **product/business term** for what an institution actually offers, preserving the institution's own terminology and real-world offering context.

### Discovery Programme

A separate **StudyNexus-curated discovery concept** that can group/classify institution offerings for cross-institution discovery/comparison where useful.

### ProgrammeInstance

A historically important technical/domain-model concept introduced to capture variation such as campus, delivery and other context. It demonstrates a real underlying need for contextual variation, but it is **not automatically the preferred product-language noun**.

### Bare Programme

Bare `Programme` is overloaded and should not be used as though it had one canonical meaning. It may refer to an institution offering, a discipline/field, a curated discovery concept or a context-specific instance.

### Current assumption

The canonical Product Discovery assumes:

> **Institution Offering and Discovery Programme are distinct product concepts; discovery classification may be optional; a valid Institution Offering may exist without a Discovery Programme mapping.**

This is strongly supported but remains an explicit, reversible assumption until Ubiquitous Language and subsequent domain work test it. [C023, C024, C081–C083; D020, D022; R001–R002]

## 33. Recognition / accreditation / approval vocabulary

The product does **not** adopt `Recognition` as one universal noun.

At minimum, later vocabulary work must keep separate:

- **Accreditation** — authority decision/status about a scoped educational subject under a scheme.
- **Qualification Recognition** — acceptance/recognition of a qualification/credential for a stated purpose/jurisdiction.
- **Institution Approval / Recognized Status** — externally granted legitimacy/licensing/listing/approval of an institution.
- **Authority / Regulator / Awarding body** — the external actor that makes a decision or owns an authoritative record.

The exact jurisdiction-specific vocabulary, effective dates and scope semantics remain to be refined. [C064, C079, C080; D023; R003]

## 34. Admissions vocabulary

Keep separate:

- **Admission requirement** — a published condition.
- **Eligibility** — whether a person appears to satisfy applicable conditions; may have different meanings in admissions and funding.
- **Self-assessment** — a StudyNexus decision-support interaction based on published information/user declarations.
- **Admission decision** — external authoritative outcome; not owned by StudyNexus.
- **Catchment / ELDS** — contextual admission-policy concepts.
- **Post-UTME** — Nigeria-specific institutional screening/assessment information.
- **Admission cycle** — time/context within which policy may apply.

Automated eligibility evaluation must not be smuggled into the meaning of requirement or self-assessment. [C017, C036, C037, C047; R015]

## 35. Funding vocabulary

`Funding Opportunity` is the broader product concept where supported; `Scholarship` is one recognizable funding form alongside grants, bursaries, aid and other opportunities. StudyNexus's current responsibility is information/discovery/explanation/handoff, not provider award management. [C039, C040; D015]

## 36. Examination vocabulary

Current evidence supports distinction among:

- examination authority;
- examination product;
- particular administration/sitting;
- time-specific schedule/change event;
- practice/learner assessment.

The exact canonical vocabulary inside that set is not yet mature enough to finalize here. [C043, C044, C078; R010]

## 37. Content vocabulary

Keep `News` distinct from evergreen explanatory resources because their time horizon, editorial purpose and relationship to durable facts differ.

Historical `Shelf`, `Book`, `Chapter` and `Page` terms remain evidence of content structure possibilities, not canonical product objects that this stage must freeze.

## 38. Canonical concept register

The machine-readable `StudyNexus-Canonical-Product-Concept-Register.csv` contains the broader concept inventory for Ubiquitous Language handoff.

| ID | Concept | Canonical product meaning | Scope | Maturity | Confidence |
| --- | --- | --- | --- | --- | --- |
| CON002 | Institution | A recognized educational institution represented in StudyNexus. Institution identity is distinct from arbitrary related organizations and from a campus/location. | MVP — defined | well defined | HIGH |
| CON003 | Campus | A named institutional location/branch context where real offering, admission, service or accreditation facts may vary. | MVP — defined | partially defined | HIGH |
| CON005 | Institution Offering | The source-faithful fact that a specific institution offers a named course/programme, preserving the institution’s own terminology and real-world offering context. | MVP — explicit assumption required | dependent on explicit assumption | MEDIUM-HIGH |
| CON006 | Discovery Programme | A StudyNexus-curated concept used to group or relate institution offerings for cross-institution discovery, comparison, facets and publication where useful. | MVP — explicit assumption required | dependent on explicit assumption | MEDIUM-HIGH |
| CON010 | Admission | Information about how a learner may enter an institution or offering, including published requirements, cutoffs, cycles and jurisdiction-specific policy factors. | MVP — defined | well defined | HIGH |
| CON011 | Admission Requirement | A published condition for admission. It is not itself a candidate-specific eligibility result. | MVP — defined | well defined | HIGH |
| CON012 | Eligibility | The outcome/assessment of facts against rules in a particular context. Admission eligibility and funding eligibility are not assumed to be one universal rule system. | MVP — defined for self-assessment; automation deferred | partially defined | HIGH |
| CON016 | Catchment | A geographic admission-policy consideration defined by an authoritative admission policy; it is not physical proximity and not a permanent institution attribute. | MVP — defined | well defined | HIGH |
| CON017 | ELDS | Educationally Less Developed States: a Nigeria-specific admission classification used where authoritative policy applies. | MVP — defined | well defined for Nigeria | HIGH |
| CON019 | Funding Opportunity | An educational funding opportunity such as scholarship, grant, bursary or aid, with benefits, criteria, dates, restrictions, provider and authoritative handoff. | MVP — defined | partially defined | HIGH |
| CON021 | Accreditation | A time-bounded decision or status granted by a competent authority about the quality/compliance of an institution, offering, programme, campus or other scoped educational object, according to the authority's jurisdiction and scheme. | MVP — boundary requires refinement | partially defined | HIGH |
| CON022 | Qualification Recognition | An external authority's judgment about whether a qualification, award or credential is recognized or accepted for a stated purpose or jurisdiction. | MVP — boundary requires refinement | underspecified | MEDIUM |
| CON023 | Institution Approval / Recognized Status | An externally granted status indicating whether an institution is approved, licensed, recognized, listed or otherwise valid under a competent authority's rules. | MVP — boundary requires refinement | partially defined | HIGH |
| CON026 | Examination Product | A named examination or assessment offering such as a public or standardized examination, distinct from a particular administration/sitting and from practice activity. | MVP — boundary requires refinement | partially defined | MEDIUM |
| CON027 | Examination Administration | A particular administration, sitting, session or cycle of an examination product in a defined time/context. | MVP — boundary requires refinement | underspecified | MEDIUM |
| CON028 | Examination Schedule Event | A time-sensitive event affecting an examination administration, such as a scheduled sitting, postponement, cancellation or other published change. | MVP — boundary requires refinement | underspecified | MEDIUM |
| CON029 | News | Time-sensitive editorial information that explains educational developments, announcements or changes without becoming the canonical owner of durable institution/offering/admission facts. | MVP — defined | well defined | HIGH |
| CON030 | Evergreen Guide / Resource | Longer-lived educational information that explains stable or slowly changing topics, processes, decisions and pathways outside time-sensitive News. | MVP — underspecified | underspecified | MEDIUM |
| CON031 | Education Service | An education-related service or task a user may need to understand, locate or access, where StudyNexus primarily provides information, guidance and authoritative handoff rather than executing the external service. | MVP — defined | partially defined | HIGH |
| CON033 | Source | An identifiable origin from which StudyNexus receives information or evidence, with provenance and authority characteristics that may differ by fact type and context. | MVP — defined | partially defined | HIGH |
| CON035 | Candidate Information / Candidate Change | Sourced or extracted information that may imply a new fact or change but has not yet been accepted into StudyNexus canonical information. | MVP — defined | partially defined | HIGH |
| CON036 | Canonical StudyNexus Information | The current StudyNexus representation accepted for product use after applying the relevant evidence, normalization and review rules; it remains a representation of external reality, not ownership of the external authority's underlying fact. | MVP — defined | well defined | HIGH |
| CON037 | Derived Representation | A representation calculated, normalized, classified or projected from canonical and/or curated StudyNexus information for discovery, search, comparison, publication or presentation. | MVP — defined | partially defined | HIGH |
| CON038 | Provenance | Traceable information about where a StudyNexus fact, candidate, interpretation or publication came from and how it reached its current state. | MVP — defined | well defined | HIGH |
| CON041 | User Contribution / Report | Information submitted by a user to flag, add, challenge or contextualize StudyNexus information; it is an input to information quality, not canonical truth by submission alone. | MVP — defined | partially defined | HIGH |
| CON042 | Search | Intentional retrieval of known or constrained education information using text, filters or other explicit criteria. | MVP — defined | well defined | HIGH |
| CON043 | Discovery | Exploration of education possibilities, alternatives, combinations and related information when the user does not already know the exact target. | MVP — defined | well defined | HIGH |
| CON044 | Classification | A StudyNexus-curated association that places source-faithful offerings or other information into discovery groupings, taxonomies or views without rewriting the underlying source-faithful fact. | MVP — explicit assumption required | dependent on explicit assumption | MEDIUM-HIGH |
| CON046 | Publication / Indexability | The product decision about whether information or a discovery surface should be publicly exposed and/or made canonical/indexable for search engines; this is distinct from whether the underlying canonical fact exists. | MVP — boundary requires refinement | partially defined | HIGH |
| CON047 | Comparison | A decision-support behavior that places relevant education options or facts side by side using comparable information. | MVP — defined | partially defined | HIGH |
| CON048 | Career Pathway | Information connecting study choices to plausible career directions, occupations or next-step outcomes, without asserting deterministic employment results. | MVP — underspecified | underspecified | MEDIUM |
| CON049 | Undergraduate Current Journey / WF7 | The information journey for a current undergraduate seeking to understand their present educational path, progression and relevant next decisions. | MVP — defined | partially defined | HIGH |
| CON050 | Transfer | Information supporting a learner who is considering moving between institutions, programmes or education paths, including relevant requirements and constraints where known. | MVP — underspecified | underspecified | MEDIUM |
| CON051 | Postgraduate Pathway / Opportunity | Information that helps users discover and understand postgraduate study options and relevant entry/pathway information. | MVP — underspecified | underspecified | MEDIUM |
| CON052 | Internship Opportunity | Information about internship or practical-work opportunities relevant to learners' education/career journey. | MVP — underspecified | underspecified | MEDIUM |
| CON053 | Public Account / Persistent Identity | A persistent user identity that can support saved state or personal capabilities. It is not required for anonymous core discovery/search/comparison, but under the current MVP-default rule remains in MVP consideration. | MVP — boundary requires refinement | underspecified | MEDIUM |
| CON054 | Personalization | Adaptation of information, recommendations, saved state or guidance to a user's declared or persistent context without making personalization a prerequisite for core anonymous discovery. | MVP — underspecified | underspecified | LOW-MEDIUM |
| CON055 | Notification | A product-initiated alert or update to a user about relevant educational information or changes, where the user has an appropriate delivery context/consent. | MVP — underspecified | underspecified | LOW-MEDIUM |
| CON056 | Ranking / Institutional Intelligence | An unresolved possible product concept involving comparative institutional metrics, imported rankings, normalized observations or StudyNexus-derived intelligence; product-capability membership is not established. | GENUINELY UNRESOLVED WHETHER PRODUCT CAPABILITY | genuinely unresolved | LOW |
| CON057 | Country / Administrative Area | Geographic context used to locate institutions/services and interpret discovery, admission, funding and other jurisdiction-dependent information. | MVP — defined | partially defined | HIGH |
| CON058 | Organization (potential shared abstraction) | Unresolved possible umbrella abstraction for non-person actors such as regulators, exam bodies, scholarship providers, publishers or service providers; not an accepted universal StudyNexus product concept. | NOT APPLICABLE — unresolved vocabulary/modeling question | genuinely unresolved | LOW-MEDIUM |

---

# Part VIII — Trust, Provenance and Information Quality

## 39. Product-level information flow

The canonical trust model is conceptual:

```text
external source / user report / observed material
        ↓
evidence or extracted information
        ↓
candidate information / proposed change
        ↓
matching / comparison / conflict recognition
        ↓
review under applicable authority and quality rules
        ↓
accepted canonical StudyNexus representation
        ↓
derived discovery / comparison / search / publication representations
```

This is not a database or queue design.

## 40. Canonical trust rules

1. **Source evidence is not canonical truth.**
2. **Candidate information is not canonical truth.**
3. **Derived representations do not acquire authority over their inputs.**
4. **User reports are evidence/input, not direct mutations.**
5. **AI extraction/recommendation may assist but cannot silently decide canonical state.**
6. **MISSING ≠ DELETE.**
7. **Conflicting sources require interpretation/review rather than newest-source-wins by default.**
8. **Historical observations may remain useful even when the current canonical representation changes.**
9. **Freshness matters, but there is no evidence for one global freshness threshold across all information types.**
10. **Public trust signals must not imply more certainty than the underlying evidence warrants.**

## 41. Provenance

Provenance exists so StudyNexus can answer questions such as:

- Where did this information come from?
- Which authority or source supports it?
- When was it observed/verified?
- Was there conflicting evidence?
- Was it accepted, rejected or superseded?
- Can a user/operator understand why the current representation exists?

Provenance is a product trust requirement, not merely generic technical logging.

## 42. Remaining trust questions

Two important non-blocking questions remain:

- What category-specific source-authority hierarchy should apply when sources conflict? [R018]
- Which provenance/freshness/confidence signals should be shown to end users, and with what language? [R019]

These questions do not block Ubiquitous Language because the core conceptual distinctions are already clear.

---

# Part IX — Information Ownership

StudyNexus commonly **represents** authoritative external facts; it does not thereby become the real-world authority that issued them.

| Information category | External authority/owner | StudyNexus canonical representation | Derived/product interpretation | User contribution role | External handoff |
| --- | --- | --- | --- | --- | --- |
| Institution facts | Institution/regulator/other competent external sources depending on fact | StudyNexus accepted institution representation | Discovery/search/comparison representation | User report may challenge; never authoritative by submission | External institution/service links where action lies elsewhere |
| Institution offering | Institution and applicable authorities | StudyNexus accepted source-faithful offering representation | Discovery classification, comparison/search representation | May report omissions/changes | Institution handles actual study/enrolment |
| Admissions / cut-offs / requirements | Institution, JAMB and other competent admission authorities | StudyNexus accepted admission-information representation | Self-assessment/explanatory representation | May flag discrepancies | Application/admission decision remains external |
| Catchment / ELDS | Competent admission-policy authority | StudyNexus contextual representation | Discovery/explanation | May challenge stale/incorrect policy | Final admission decision external |
| Accreditation / institution approval | Competent regulator/accreditation authority | StudyNexus accepted representation of authority decision/status | Trust/comparison display | May flag conflict | Authority owns status decision |
| Qualification recognition | Competent recognition/credential authority | StudyNexus accepted representation | Guidance/comparison | May flag issues | Recognition decision remains external |
| Funding opportunity | Provider/awarding body | StudyNexus accepted opportunity/criteria representation | Funding discovery/matching/handoff | May flag changes | Application, selection, award and disbursement external |
| Examination information | Examination authority | StudyNexus accepted exam/schedule representation | Discovery/explanation/alerts where later defined | May report change | Registration/payment/results/certification external |
| News | StudyNexus editorially owns the article/report; underlying events/facts may have external authorities | Published StudyNexus news item | Search/discovery surfaces | Tips may be inputs | Underlying durable fact remains with its canonical category |
| Education service | External provider/authority owns actual service | StudyNexus service information/guidance representation | Service discovery/handoff | May flag service changes | Service execution external |
| Career / transfer / postgraduate / internship information | Varies by institution/provider/authority/source type | StudyNexus accepted explanatory/discovery representation once defined | Discovery/guidance | May contribute evidence where supported | Applications/placements/actions external |
| User report | Contributor owns submission; no authority implied | StudyNexus stores/evaluates as evidence/candidate input | Trust/review representation | It is the contribution itself | No external handoff unless report points to source |
| Search/discovery projection | No external owner; it is derived product representation | StudyNexus derives/rebuilds it from accepted/curated information | It is itself the user-facing derived representation | No direct mutation from contribution | N/A |

### Ownership principle

For later modeling, always ask separately:

1. Who owns the real-world authoritative fact?
2. What StudyNexus accepts as its current canonical representation?
3. What StudyNexus derives/curates from that representation?
4. What users may contribute as evidence?
5. Which next action must be handed off externally?

This prevents “StudyNexus has data about X” from turning into the false statement “StudyNexus owns X.”

---

# Part X — Search, Discovery, SEO and Publication

## 43. Search

Search serves a user who has a known or constrained target. It may use text, filters and structured criteria.

The product meaning of Search is independent of the particular search technology. [C031–C034]

## 44. Discovery

Discovery serves a user exploring possibilities: institutions, offerings, related study concepts, geographic options, funding/services and other relevant education information.

Discovery may require product-owned classifications/curation that are **derived from**, rather than replacements for, source-faithful canonical information. [C023, C024, C031, C053, C082, C083]

## 45. SEO/publication

StudyNexus may expose dynamic query/filter experiences, but not every valid query combination should become a canonical indexable public page.

The product-level rule is:

> Index/publication is a selective product decision based on usefulness and canonicality of the surface, not an automatic consequence of a filter combination existing.

Exact route shapes, metadata implementations, sitemap mechanisms and search-engine integrations are outside this Product Discovery. [C035, C065; R017]

---

# Part XI — Current Scope, Exclusions, Deferrals and Unknowns

## 46. Current strategic MVP

The strategic MVP is represented by every capability marked `MVP — ...` in the capability register. This includes both well-defined core capabilities and underspecified journeys that remain under current consideration.

The following are especially important current-MVP areas:

- institution discovery and information;
- Institution Offering information;
- Discovery Programme/classification;
- admissions information;
- requirements/self-assessment;
- comparison;
- search and discovery;
- funding/scholarships;
- catchment/ELDS;
- News;
- Education Services & Access;
- trusted information/provenance;
- examinations information/schedules;
- evergreen guides/resources;
- career pathways;
- undergraduate current journey/WF7;
- transfers;
- postgraduate pathways;
- internships;
- user contribution/report input;
- public/persistent identity, personalization and notifications as underspecified current considerations;
- accreditation/approval/qualification-recognition information.

**Cross-cutting current product principle:** jurisdiction-aware internationalization semantics applies across relevant MVP capabilities, while Nigeria-first public delivery remains the current rollout boundary. It is not counted as a standalone product capability. [C038, C051, C057, C084; D005; R014]

## 47. Evidence-backed exclusions

### Institution/provider self-service

Excluded from the current product boundary under the governing product decisions. Providers remain information authorities/actors, not current self-service product users. [C012; R013]

### Public API / developer platform

Excluded from the current product. [C012; R013]

### External transaction execution

StudyNexus does not currently execute enrolment/admission applications, exam registration/payment/results/certification, scholarship award/disbursement, visa/government processing or comparable external provider transactions. It may inform and hand off. [C014, C039, C048, C067]

### Multi-country public rollout

Current public delivery is Nigeria-first. International semantics remain a product requirement; international public rollout is not current delivery scope. [C038, C057, C084; R014]

### Automatic canonical mutation from AI, scraping or public reports

Excluded by information-quality principles. Such inputs remain evidence/candidates until accepted by applicable rules. [C025, C027, C030]

### Indiscriminate SEO filter-page indexation

Excluded. Valid queries and indexable canonical surfaces are not the same thing. [C035]

## 48. Genuine current deferrals

Only two major capabilities currently have sufficiently strong positive deferral evidence:

### Automated deterministic eligibility evaluation

Currently deferred. Current MVP retains published requirements and self-assessment; automated profile-vs-rule evaluation waits for sufficiently reliable structured rules and supporting product definition. [C017; D004; R015]

### Examination practice / assessment

Practice questions, attempts, scoring and learner progress are currently deferred from the examination-information capability. [C044, C075; R010]

## 49. Genuine product-membership unknowns

### Rankings / institutional intelligence

The corpus cannot currently establish whether this belongs to StudyNexus as a product capability. More discovery is required. [C050, C085; R009]

### Full social/community product

The current product includes user contribution/report input for information quality. That does **not** establish a broader social/community product. Whether such a product belongs at all remains unresolved. [C025, C063; R008]

---

# Part XII — Explicit Assumptions

## A001 — Institution Offering / Discovery Programme distinction

**Assumption:** Institution Offering is the preferred product/business term for an institution-specific, source-faithful study offering. Discovery Programme is a separate StudyNexus-curated discovery concept. Classification may be optional.

**Evidence:** C023, C024, C081–C083; D020, D022; R001–R002.

**Uncertainty:** exact contextual variant vocabulary (campus/delivery/cycle/etc.) and classification cardinality remain to be formalized.

**Downstream impact:** high for Ubiquitous Language and later modeling.

**UL blocker?** No, if retained explicitly and tested rather than silently frozen.

**MVP:** yes.

## A003 — Accounts/personalization/notifications

**Assumption:** the historical rule “no account required for core anonymous discovery” is a constraint on the anonymous capability minimum, not current evidence that persistent identity, personalization and notifications are outside strategic MVP.

**Evidence:** C016; D003, D021; R012.

**Uncertainty:** exact persistent jobs, privacy/consent model, saved-state minimum and notification channels/triggers.

**UL blocker?** No. These can enter later vocabulary work with explicit maturity markers.

---

# Part XIII — Open Questions and Evidence Gaps

The following questions remain open without removing their associated MVP capabilities:

| Area | Open question | MVP impact | Blocks UL? | Evidence needed |
|---|---|---|---|---|
| Institution Offering | What vocabulary represents offering variants/context such as campus, delivery, study mode or cycle without reviving an overly technical universal? | MVP remains in scope | No | Source examples across institutions + UL testing |
| Discovery Programme | Which classification schemes exist, and what mapping cardinalities are genuinely required? | MVP remains in scope | No | Real offering-classification examples |
| Career pathways | What user decision does the minimum capability support and which career facts are sufficiently trustworthy? | MVP — underspecified | No | User research + source research |
| Transfers | Which transfer questions/requirements must StudyNexus explain first? | MVP — underspecified | No | Jurisdiction/institution examples + user research |
| Postgraduate | What is the first useful postgraduate discovery/information minimum? | MVP — underspecified | No | User/source research |
| Internships | Is the product primarily discovery, curation or guidance, and what source model is credible? | MVP — underspecified | No | User/provider/source research |
| Examinations | Which parts of authority/product/administration/schedule vocabulary are required in the capability minimum? | MVP — boundary refinement | No | Source examples across exam systems |
| Evergreen content | What content types/lifecycle are minimum; which historical shelf/book structures remain useful? | MVP — underspecified | No | Editorial/product definition |
| Accounts | Which persistent jobs justify identity while keeping anonymous core? | MVP — boundary refinement | No | User research, privacy/product design |
| Personalization | Which outcomes and inputs justify personalization? | MVP — underspecified | No | User research/experiments |
| Notifications | Which trusted events justify alerts and what consent/delivery state is needed? | MVP — underspecified | No | User research + trust policy |
| Source authority | How should source precedence vary by information category? | Trust capability remains MVP | No | Category-specific authority analysis |
| Trust signals | Which provenance/freshness/confidence details improve decisions rather than confuse users? | Trust capability remains MVP | No | User research/usability testing |
| Accreditation | What minimum jurisdiction/scoping/status vocabulary is necessary for Nigeria-first delivery? | MVP — boundary refinement | No | Regulator-source analysis |
| SEO publication | What exact product criteria make a dynamic discovery combination worthy of canonical/indexable publication? | Discovery remains MVP | No | Search/SEO evidence and content-quality policy |
| Rankings | Does a real user problem justify a rankings/intelligence capability, and would it import or compute rankings? | Membership unknown | No | Direct discovery/user research |
| Full community | Is there a distinct social/community opportunity beyond information-quality contributions? | Membership unknown | No | User research and product opportunity definition |

### Primary research gap

The largest cross-cutting evidence weakness is still the scarcity of direct user research. This does not invalidate the current owner-defined product baseline, but it lowers confidence in relative problem priority, some journey minimums and several proposed/underspecified capabilities. [C054, C055]

---

# Part XIV — Current Decision Baseline

## 50. Current adopted product decisions

- StudyNexus is a trusted education information/discovery/decision-support product, not a transaction platform.
- Nigeria-first public delivery.
- Search and discovery are distinct capabilities.
- Information-quality/provenance is a current product responsibility.
- Source/candidate/canonical/derived information must remain distinguishable.
- MISSING ≠ DELETE.
- AI/scraper/user reports cannot silently establish canonical truth.
- Catchment/ELDS is contextual admission-policy information.
- Funding is broader than scholarships and ends in external handoff where provider action begins.
- News does not own durable canonical education facts.
- Education Services & Access is information/discovery/guidance/handoff.
- Strategic MVP membership is independent from historical phase labels.
- Automated eligibility and exam practice/assessment are currently deferred.

## 51. Current explicit assumptions

- Institution Offering / Discovery Programme distinction and optional classification.
- Accounts/personalization/notifications remain MVP considerations while anonymous core remains account-free.

## 52. Current proposals / underspecified areas

Examination detail model, evergreen content minimum, career, transfers, postgraduate, internships, persistent identity, personalization, notifications, accreditation-detail vocabulary and several trust/display policies remain intentionally incomplete.

## 53. Current product-membership unknowns

- rankings/institutional intelligence;
- full social/community product beyond evidence/report input.

---

# Part XV — Evidence and Traceability Discipline

Each important conclusion in this document should be traceable through three identifier families:

- **Cxxx** — major claim/evidence records;
- **Dxxx** — major historical or remediation decision records;
- **Rxxx** — remediation/canonicalization resolutions.

The machine-readable registers also retain representative source paths.

The identifiers are traceability aids, not substitutes for reasoning:

- a historical decision does not automatically become a current decision;
- a copied source does not count as independent corroboration;
- an architectural proposal does not establish a product requirement;
- current owner normalization decisions (including D021–D023) must remain distinguishable from original historical business decisions.

The historical reconstruction remains the source for detailed archaeology. It is no longer required to understand the current product baseline.

---

# Part XVI — Vocabulary / Modeling Inputs for the Next Stage

The following concepts are ready to enter Ubiquitous Language work as **candidates**, not as pre-decided DDD objects:

- Institution
- Campus
- institution relationship / affiliation / branch distinctions
- Institution Offering
- Discovery Programme
- programme / discipline / field / course-of-study meanings
- offering context / variant
- qualification / award
- Admission
- Admission Cycle
- Admission Requirement
- Eligibility
- Self-Assessment
- Cut-off Mark
- Catchment
- ELDS
- Post-UTME
- Funding Opportunity
- Scholarship / grant / bursary / financial aid
- Accreditation
- Qualification Recognition
- Institution Approval / Recognized Status
- Education Authority / Regulator
- Examination Authority
- Examination Product
- Examination Administration
- Examination Schedule Event
- News
- Evergreen Guide / Resource
- Education Service
- Education Service Point
- Source
- Evidence
- Candidate Information / Candidate Change
- Canonical StudyNexus Information
- Derived Representation
- Provenance
- Freshness
- Information Conflict
- User Contribution / Report
- Search
- Discovery
- Classification
- Facet
- Publication / Indexability
- Comparison
- Career Pathway
- Undergraduate Current Journey / WF7
- Transfer
- Postgraduate Pathway
- Internship Opportunity
- Public Account / Persistent Identity
- Personalization
- Notification
- Ranking / Institutional Intelligence
- Country / Administrative Area
- Organization (explicitly as an unresolved possible abstraction, not an accepted universal)
- information trust categories

Particular attention in the next stage should go to overloaded words:

```text
Programme
Eligibility
Recognition
Organization
Status
Source
Publication
Content
```

Their current ambiguity is useful evidence that context-specific meanings may be necessary. This Product Discovery intentionally does not decide bounded contexts or technical models.

---

# Part XVII — Final Product Discovery Production-Readiness Gate

| Gate dimension | Status | Basis |
| --- | --- | --- |
| Product definition coherence | READY | Product category, purpose and non-transactional boundary are stable. |
| Problem model coherence | READY | Fragmentation, trust, discoverability, comparison and accessibility remain coherent top-level dimensions. |
| User model coherence | READY | Four primary/secondary user groups are distinguishable; direct validation remains limited but explicit. |
| Capability coherence | READY WITH EXPLICIT UNCERTAINTY | MVP membership and definition maturity are separated; rankings/full social remain membership unknown. |
| Current MVP scope coherence | READY | Historical phase labels no longer act as current exclusions. |
| Product-boundary coherence | READY | Information/discovery/guidance/handoff is distinguished from external transaction execution. |
| Trust/provenance coherence | READY | Source, candidate, canonical and derived information are distinct; MISSING≠DELETE preserved. |
| Search/discovery coherence | READY | Search, discovery, infrastructure and SEO publication are distinct. |
| Programme/offering conceptual coherence | READY WITH EXPLICIT ASSUMPTION | Institution Offering and Discovery Programme are separated; ProgrammeInstance remains historical technical vocabulary. |
| Major workflow coverage | READY | Core and underspecified current journeys are explicitly represented. |
| Explicit exclusions | READY | Provider self-service, public API, transaction execution, automatic canonical mutation and current multi-country rollout are evidence-backed boundaries. |
| Genuine current deferrals | READY | Automated eligibility evaluation and examination practice/assessment are separately deferred. |
| Open-question visibility | READY | Questions are explicit and do not silently become scope exclusions. |
| Assumption visibility | READY | Two explicit product assumptions are isolated and traceable; the MVP-default rule is separately classified as adopted scope governance. |
| Evidence traceability | READY | Major conclusions use C/D/R identifiers and registers preserve source paths. |
| Absence of unresolved true Product Discovery blockers | READY | Rankings/full-social membership remain explicit unknowns but do not contradict the authoritative current product baseline. |
| MVP vs first vertical slice | READY | Separated mechanically in capability register. |
| MVP vs definition maturity | READY | Separated mechanically in capability register. |

## Formal readiness decision

# **PRODUCTION-READY WITH EXPLICIT ASSUMPTIONS**

StudyNexus Product Discovery is sufficiently coherent, current-scope explicit, evidence-traceable and product/architecture-separated to serve as the **authoritative current product baseline**.

There is **no unresolved true Product Discovery blocker**.

Two explicit product assumptions remain visible: the **Institution Offering / Discovery Programme distinction**, including optional classification and unresolved offering-context vocabulary; and the interpretation that public/persistent identity, personalization and notifications remain current MVP considerations while the anonymous core remains account-free. The current-MVP default is **not** an assumption; it is an adopted product-owner scope governance rule.

Rankings/institutional intelligence and a full social/community product remain genuine product-membership unknowns. They are neither MVP commitments nor exclusions.

Several current-MVP capabilities remain underspecified. That does not reduce their MVP membership because scope, maturity and sequencing are separate dimensions.

**Product Discovery reconstruction/canonicalization should now stop.** Any downstream vocabulary, domain or technical work must be derived from this baseline and must not silently redefine it without an explicit new product decision.

---

# Appendix A — Canonicalization Package

The canonicalization package consists of:

1. `StudyNexus-Canonical-Product-Discovery.md` — this authoritative current product document.
2. `StudyNexus-Product-Discovery-Resolution-Ledger.csv` — repaired R001–R020 machine-readable resolution record.
3. `StudyNexus-Canonical-Product-Concept-Register.csv` — product concept/vocabulary input register.
4. `StudyNexus-Canonical-Capability-Scope.csv` — mechanically auditable current scope register.

The forensic reconstruction and its historical companion ledgers remain preserved as evidence.

# Appendix B — Artifact Integrity Result

The productionization pass established:

- the empty Resolution Ledger was repaired from the actual remediation work rather than invented anew;
- claim-source cardinality is represented row-wise in the repaired evidence package;
- historical state, current scope and delivery/first-slice interpretation are no longer treated as one status;
- historical Phase 2/3/Future/Later/Deferred labels do not silently remove capabilities from current MVP;
- remediation-created D021–D023 remain identifiable as reconstruction/normalization decisions rather than original historical product decisions;
- current scope and definition maturity are separate in the canonical capability register;
- no Laravel/DDD/database/module structure is prescribed by this document;
- historical reconstruction artifacts are preserved rather than overwritten.

**Known unrepaired artifact-integrity problems:** none identified in the required canonicalization package after consistency validation.

