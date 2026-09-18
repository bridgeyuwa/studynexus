# StudyNexus Product Discovery: Global Institution Offerings, Programme Discovery, Classification, and SEO Landing Pages

**Status:** Proposed architecture / product-discovery decision

**Scope:** StudyNexus education discovery platform

**Primary concern:** How StudyNexus can store institution programmes globally, handle inconsistent naming, support standardized discovery pages such as **“Institutions Offering Computer Science in Nigeria”**, and scale from Nigeria to Ghana, Kenya, the UK, USA, Philippines, Canada, Australia, and other countries without requiring manual classification of hundreds of thousands or millions of institution offerings.

---

## 1. Executive Decision

StudyNexus should **not** maintain a giant global master list of every programme offered by institutions, and it should **not require every `InstitutionOffering` to be manually classified** before the offering can be stored, searched, displayed, or used in the product.

The recommended architecture is:

```text
Institution
    │
    └── 1 : Many
          │
          ▼
    InstitutionOffering
          │
          ├── exact institutional name
          ├── institution-specific facts
          ├── qualification / level
          ├── campus / location
          ├── admission data
          ├── provenance
          └── optional discovery / classification metadata

Separate discovery layer:

DiscoveryProgramme
    │
    └── defines StudyNexus concepts that deserve standardized discovery experiences

Separate geography layer:

GeographicArea
    │
    └── country → region/state/province/etc. → locality/city/etc.

Separate publication layer:

DiscoveryLandingPage
    │
    ├── DiscoveryProgramme
    ├── GeographicArea
    ├── publication/indexability status
    └── canonical URL
```

The core principles are:

1. **InstitutionOffering is the factual source of truth for what an institution says it offers.**
2. **InstitutionOffering classification is optional, not a prerequisite.**
3. **StudyNexus DiscoveryProgramme is a curated/demand-driven product concept, not a universal catalogue of every programme in existence.**
4. **External standards such as ISCED-F, CIP, HECoS, or national frameworks are classification schemes, not automatically the StudyNexus master programme list.**
5. **Multiple classification schemes must be supported because countries and jurisdictions use different systems.**
6. **Country-specific data and rules should be logically separated while remaining in one PostgreSQL database unless operational or regulatory needs later justify physical separation.**
7. **Search does not depend on perfect classification.** Typesense can search real institutional offering names even when they are not yet mapped to a discovery concept.
8. **SEO landing pages are selectively published.** A possible programme × geography combination does not automatically become an indexable page.
9. **Automation should generate candidate matches; humans should resolve uncertain or consequential mappings.**
10. **MISSING/UNRESOLVED classification is not DELETE.** An unresolved offering remains valid source data.

---

# 2. The Problem

StudyNexus intends to become a global education discovery platform, starting in Nigeria but eventually expanding internationally.

The platform must support a large and messy dataset of institutions and programme offerings.

A plausible scale discussed for the system is:

```text
10,000+ institutions
×
~50 offerings per institution
=
~500,000 institution offerings
```

This is not a PostgreSQL capacity problem. A database can handle substantially more than 500,000 ordinary rows.

The real problem is **semantic classification workload**.

If the architecture says:

```text
InstitutionOffering
        ↓
mandatory AcademicConcept classification
```

then 500,000 offerings become 500,000 semantic decisions.

That does not scale operationally.

The challenge becomes even harder globally because institutions use different:

- programme names;
- spelling conventions;
- qualification naming;
- academic traditions;
- regulatory structures;
- programme combinations;
- programme specializations;
- degree levels;
- national classification systems;
- subject taxonomies;
- vocational and technical frameworks;
- professional programme structures.

Therefore, StudyNexus must distinguish between **capturing institutional reality** and **standardizing that reality for discovery**.

---

# 3. The Foundational Domain Distinction

## 3.1 Institution

An `Institution` is a recognized educational institution represented by StudyNexus.

Examples:

- University of Lagos
- University of Ghana
- University of Manchester
- University of Toronto
- a Nigerian Polytechnic
- a College of Education
- a future institution type in another jurisdiction

The institution itself is not the programme.

---

## 3.2 InstitutionOffering

An `InstitutionOffering` represents the fact that a specific institution offers a specific programme or course of study under its own published terminology.

Examples:

```text
University of Lagos
"B.Sc. Computer Science"
```

```text
Bowen University
"B.Sc. Computer Science and Information Technology"
```

```text
University of Ghana
"BSc Computer Science"
```

```text
University of Manchester
"BSc Computer Science"
```

The exact institution-published name should remain preserved.

This is important because StudyNexus is an information/discovery product, not a system that should rewrite an institution's official programme identity.

Recommended conceptual relationship:

```text
Institution 1 ───────── * InstitutionOffering
```

This relationship should be fundamental and stable.

---

# 4. Why a Global Master Programme List Is the Wrong Core Model

A tempting architecture is:

```text
Programme
    │
    └── InstitutionOffering
```

where `Programme` is assumed to be a universal master list.

This creates several problems.

## 4.1 You must define the universe in advance

You would need to answer:

> Which programmes exist globally?

That is not a finite list you can confidently complete before collecting the data.

Every country introduces:

- different terminology;
- different combined programmes;
- local specializations;
- unique institutional programmes;
- new/emerging fields;
- vocational programmes;
- professional programmes;
- programmes that do not cleanly correspond to another country's terminology.

---

## 4.2 It turns ingestion into a classification project

A new source record becomes:

```text
collect programme
    ↓
normalize name
    ↓
find canonical programme
    ↓
resolve ambiguity
    ↓
manually review if required
    ↓
persist
```

This unnecessarily delays the most important function:

> capturing what the institution actually offers.

Recommended flow:

```text
collect institution offering
    ↓
persist factual source data
    ↓
make searchable
    ↓
optionally classify / normalize
    ↓
optionally publish into discovery experiences
```

---

# 5. Why ISCED-F Is Not the Programme Master List

ISCED-F 2013 is useful and important, but its role must be understood correctly.

UNESCO UIS describes ISCED-F as a classification for fields of education and training. It has a three-level structure: 11 broad fields, 29 narrow fields, and about 80 detailed fields, using a four-digit coding system. citeturn921549search60

This means it is appropriate for questions such as:

> What field of education does this programme belong to?

It is not a complete catalogue of every named degree/programme that every university might publish.

For StudyNexus, a useful representation is therefore:

```text
InstitutionOffering
        │
        └── optional classification
                 │
                 └── ISCED-F
```

not:

```text
ISCED-F
    ↓
all programmes StudyNexus must ever support
```

ISCED-F should be treated as an **external classification scheme**.

---

# 6. Why CIP Should Not Be Treated as the Universal Global Master

The U.S. Classification of Instructional Programs (CIP) is considerably more granular than ISCED-F. NCES describes CIP as a three-level taxonomy organized around two-digit, four-digit, and six-digit codes, with six-digit codes representing specific instructional programmes. citeturn921549search61

CIP is useful for StudyNexus as an external classification reference and may be particularly useful where U.S. data is being represented.

However, CIP is a U.S. classification system. It should not automatically become the authoritative global programme ontology for Nigeria, Ghana, the UK, or every future jurisdiction.

A StudyNexus offering may therefore eventually have:

```text
CIP → code
ISCED-F → code
StudyNexus → discovery concept
National scheme → code
```

without any of those systems becoming the single owner of programme identity.

NCES also notes that a programme can in some circumstances be found in more than one CIP series depending on the programme's actual content/focus, which reinforces that classification is not identical to programme identity. citeturn921549search8

---

# 7. HECoS Shows Why Classifications Are Jurisdictional

The UK's HECoS system is another example of a useful but jurisdiction-specific classification vocabulary.

HESA describes HECoS as a subject coding system implemented from 2019/20 that replaced JACS. The current HECoS vocabulary is described by HESA as a flat, non-hierarchical list of 1,092 subject terms. citeturn921549search0turn921549search7

That makes HECoS valuable for UK data, but it does not make it a sensible universal programme master for StudyNexus.

Therefore StudyNexus should support:

```text
ClassificationScheme
    ├── ISCED-F
    ├── CIP
    ├── HECoS
    ├── national scheme(s)
    └── StudyNexus internal classification/discovery system
```

---

# 8. Nigerian Data Sources Should Be Treated as Local Source Authorities

For Nigeria, there are several authoritative or operationally valuable sources that should be treated as source systems rather than as the universal global ontology.

## 8.1 NUC CCMAS

The National Universities Commission publishes CCMAS materials by discipline, including Computing, Engineering/Technology, Medicine and Dentistry, Pharmacy and Pharmaceutical Sciences, Sciences, Social Sciences, Education, Agriculture, Arts, Law, and other disciplines. citeturn921549search3

This makes CCMAS highly useful for Nigerian university programme normalization and domain interpretation.

---

## 8.2 JAMB IBASS

JAMB's Integrated Brochure & Syllabus System exposes institution/programme eligibility flows and program-specific admission information. The current eligibility interface requires an institution and programme selection and supports O'Level, A'Level, and UTME-subject eligibility checks. citeturn921549search1

JAMB's published brochures also contain programme listings and institutions where programmes are tenable. citeturn921549search62turn921549search63

This is particularly useful because StudyNexus needs both:

```text
programme existence
+
institution-specific admission context
```

rather than only a global programme taxonomy.

---

## 8.3 NBTE

NBTE regulates Technical and Vocational Education and Training institutions outside the university system. Its official resources include directories of accredited programmes and institution/programme information. citeturn303941search4turn303941search1turn303941search6

This is particularly important for Nigeria because a programme model designed around universities alone will fail to represent polytechnics, monotechnics, technical institutions, health institutions, and other TVET structures correctly.

---

## 8.4 NCCE

NCCE is the regulatory body for non-degree teacher education in Nigeria. Its official resources include accredited colleges and guidance around NCE programmes. citeturn303941search2turn303941search10turn303941search14

Therefore Nigerian source architecture should allow multiple regulatory/source authorities rather than assuming NUC is the authority for every institution type.

---

# 9. The Key Product Decision: Separate Factual Offerings from Discovery Concepts

The system should distinguish two different questions.

### Factual question

> What does this institution actually offer?

Answer:

```text
InstitutionOffering
```

### Discovery question

> What standardized concept should a user be able to discover across institutions and locations?

Answer:

```text
DiscoveryProgramme
```

These should not be treated as the same entity.

---

# 10. DiscoveryProgramme Is Not a Global Programme Catalogue

A `DiscoveryProgramme` should be viewed as a **StudyNexus product/discovery concept**.

Examples:

```text
Computer Science
Accounting
Medicine
Nursing
Mechanical Engineering
Architecture
Data Science
Cybersecurity
```

These records exist because StudyNexus wants to support a standardized discovery experience for them.

They do not mean:

> Every educational programme in the world must first be inserted into this table.

Instead:

```text
DiscoveryProgramme
    = curated concepts that StudyNexus wants to expose consistently
```

This allows the list to grow organically from actual data and user demand.

---

# 11. DiscoveryProgramme Should Be Optional for InstitutionOffering

Recommended conceptual model:

```text
Institution
    1 ───── * InstitutionOffering

InstitutionOffering
    └── discovery_programme_id = NULL | value
```

Example:

```text
UNILAG
"B.Sc. Computer Science"
    ↓
Computer Science
```

But an obscure programme can exist without classification:

```text
University X
"MSc Advanced Computational ..."
    ↓
NULL
```

That is valid.

The offering remains:

- stored;
- source-backed;
- searchable;
- visible on the institution page;
- eligible for future classification.

Unresolved classification must never cause the source offering to disappear.

---

# 12. Do Not Use a Free-Text `canonical_slug` as the Solution

A simplistic solution would be:

```text
InstitutionOffering
    canonical_slug = "computer-science"
```

This is weak because it creates an uncontrolled pseudo-foreign-key.

Potential drift:

```text
computer-science
computer_science
computerscience
computer-science-general
```

The database cannot enforce that these mean the same thing.

A controlled concept/entity or controlled classification mapping is safer.

If StudyNexus later needs a discovery identity, the relationship should point to a real record:

```text
InstitutionOffering
    ↓
DiscoveryProgramme
```

not to arbitrary text.

---

# 13. Why the 500,000 Offering Problem Does Not Require 500,000 Manual Mappings

Suppose StudyNexus eventually has:

```text
500,000 InstitutionOfferings
```

The wrong workflow is:

```text
500,000 offerings
    ↓
500,000 mandatory human classification decisions
```

The recommended workflow is:

```text
500,000 raw offerings
    ↓
normalization / indexing
    ↓
candidate matching / clustering
    ↓
small set of repeated concepts
    ↓
only important or uncertain cases need review
```

For example, these may repeatedly occur:

```text
Computer Science
B.Sc. Computer Science
BSc Computer Science
Computer Science & IT
Computing Science
```

Instead of independently making a classification decision 50,000 times, StudyNexus can learn that many offerings are candidates for the same discovery concept.

The exact number of resulting concepts is data-dependent and must not be assumed in advance.

---

# 14. This Is an Entity Resolution / Matching Problem, Not Just a Taxonomy Problem

The deeper problem is often:

> Are these two institutional names sufficiently equivalent for a particular discovery experience?

Examples:

```text
Computer Science
Computer Science and Information Technology
Computing
Information Systems
Information Technology
Computer Engineering
Software Engineering
Data Science
```

These are related concepts, but they are not automatically identical.

A naive keyword rule such as:

```text
contains("computer")
```

is unacceptable.

StudyNexus should distinguish between:

- exact equivalent;
- probable equivalent;
- related but distinct;
- ambiguous;
- unrelated.

This is a semantic matching problem.

---

# 15. AI Should Suggest; It Should Not Become the Authority

The acquisition/classification pipeline can use AI to propose mappings.

Example:

```text
InstitutionOffering:
"B.Sc. Computer Science and Information Technology"

AI suggestion:
DiscoveryProgramme = Computer Science
Confidence = 0.91
Reason = shared core discipline
```

The system can then route uncertain cases to human review.

Recommended states:

```text
unresolved
candidate
approved
rejected
deprecated
```

AI output should be treated as a hypothesis until approved under whatever confidence/governance rules StudyNexus defines.

This is consistent with a provenance-first, human-in-the-loop acquisition architecture.

---

# 16. Do Not Make Classification a Blocking Step in Ingestion

Ingestion should work like this:

```text
Source discovered
      ↓
Capture immutable/source-backed data
      ↓
Validate
      ↓
Persist InstitutionOffering
      ↓
Emit domain event / indexing event
      ↓
Project to Typesense
      ↓
Optional classification pipeline
```

Classification may happen later.

This has several advantages:

- source data can be captured quickly;
- data quality review can happen independently;
- classification can evolve without rewriting source data;
- new classification schemes can be introduced later;
- unresolved offerings remain usable;
- acquisition failures do not become product failures.

---

# 17. Search Does Not Require Classification

This is a critical design principle.

Typesense can index the real institutional offering names.

For example:

```text
UNILAG
B.Sc. Computer Science

Bowen University
B.Sc. Computer Science and Information Technology

University of Ghana
BSc Computer Science
```

A user searching:

```text
computer science
```

can receive useful results based on actual offering text and associated filters even if some offerings have not been assigned to a StudyNexus discovery concept.

Therefore:

```text
Search ≠ classification
```

Perfect taxonomy coverage is not a prerequisite for a useful discovery engine.

---

# 18. How the SEO Landing Pages Should Work

The target pages are things such as:

```text
Institutions Offering Computer Science in Nigeria
Institutions Offering Computer Science in Benue
Institutions Offering Computer Science in North West
Institutions Offering Computer Science in Kumasi
```

The page should not be thought of as a static programme record.

It is a **discovery query + geography + publication decision**.

Conceptually:

```text
DiscoveryProgramme
        +
GeographicArea
        ↓
Discovery query
        ↓
matching InstitutionOfferings
        ↓
quality / usefulness checks
        ↓
published DiscoveryLandingPage
```

---

# 19. Geography Must Be Independent from Programme Taxonomy

StudyNexus should maintain a geography hierarchy that is not hard-coded to Nigerian terminology.

Example:

```text
Nigeria
 ├── North West
 │    ├── Kaduna
 │    ├── Kano
 │    └── ...
 ├── North Central
 │    ├── Benue
 │    └── ...
 └── South West
      ├── Lagos
      └── Oyo
```

Ghana might have:

```text
Ghana
 └── Ashanti
      └── Kumasi
```

The domain should not assume that every country has states.

The generic entity should be something like:

```text
GeographicArea
```

rather than building the system around:

```text
State
```

The geography model can represent:

- country;
- region;
- state;
- province;
- county;
- territory;
- district;
- municipality;
- city;
- locality;
- other administrative or product-relevant geographic units.

The exact hierarchy should be data-driven and jurisdiction-aware.

---

# 20. DiscoveryLandingPage as the SEO Publication Layer

A `DiscoveryLandingPage` can conceptually contain:

```text
id
    discovery_programme_id
    geographic_area_id
    status
    indexable
    canonical_url / route identity
    title override (optional)
    description override (optional)
    publication metadata
```

The important distinction is:

```text
Possible combination
        ≠
Published page
```

There may be millions of technically possible combinations.

StudyNexus should selectively publish only combinations that satisfy its page-quality criteria.

---

# 21. Do Not Generate Every Programme × Geography Combination

Suppose StudyNexus has:

```text
5,000 DiscoveryProgrammes
100,000 GeographicAreas
```

A naive cartesian product would generate:

```text
500,000,000 possible combinations
```

That does not mean StudyNexus should create 500 million URLs.

Instead:

```text
DiscoveryProgramme
      ×
GeographicArea
      ↓
Candidate combinations
      ↓
Evaluate
      ↓
Only deserving pages are published
```

The SEO publication layer must be selective.

---

# 22. Suggested Page Eligibility Signals

The exact thresholds should be product-discovery decisions, but candidate pages can be evaluated on signals such as:

- number of matching institutions;
- number of matching offerings;
- geographic specificity;
- whether the geographic area is meaningful to users;
- programme search demand;
- data quality;
- freshness of underlying sources;
- availability of sufficient page content;
- uniqueness of the resulting page;
- whether there is enough information beyond a list of institution names;
- duplication/cannibalization risk;
- whether the concept is sufficiently mature/approved;
- whether the page has a valid canonical definition.

The system should not blindly publish a page just because there happens to be one matching result.

---

# 23. A Single Dynamic Route Can Serve Many Pages

StudyNexus does not need hundreds of Laravel route declarations.

Conceptually:

```text
/institutions-offering/{programme}/{location}
```

can resolve the two slugs dynamically:

```text
programme → DiscoveryProgramme
location  → GeographicArea
```

Examples:

```text
/institutions-offering/computer-science/nigeria
/institutions-offering/computer-science/benue
/institutions-offering/computer-science/north-west
/institutions-offering/computer-science/kumasi
```

Only published/allowed combinations need to be considered indexable.

This supports the broader StudyNexus strategy of using a **dynamic discovery engine + selective SEO publication layer**, rather than building hundreds of combination-specific route declarations.

---

# 24. URL Existence and Indexability Are Different

A useful distinction is:

```text
URL can resolve
        ≠
URL should be indexed
```

A non-indexed filter/query URL can still be useful to users.

A curated canonical landing page is an SEO asset and should have higher publication standards.

This allows StudyNexus to support a broad internal discovery surface without creating an unbounded SEO index.

---

# 25. Recommended End-to-End Discovery Flow

```text
USER
  │
  │ searches for "computer science"
  ▼
Typesense / Discovery search
  │
  ├── actual offering names
  ├── institutions
  ├── geography
  └── optional DiscoveryProgramme concepts
  │
  ▼
Discovery concept selected
  │
  + GeographicArea selected
  │
  ▼
Discovery query
  │
  ▼
Matching InstitutionOfferings
  │
  ▼
Page assembly
  │
  ├── institutions
  ├── actual programme names
  ├── qualifications
  ├── locations
  ├── admission information
  └── other useful facts
  │
  ▼
SEO landing page
```

---

# 26. The User Should See the Institution's Actual Programme Name

Suppose StudyNexus maps several offerings into:

```text
DiscoveryProgramme = Computer Science
```

The result cards should still show:

```text
Bowen University
B.Sc. Computer Science and Information Technology
```

not:

```text
Bowen University
Computer Science
```

unless the institution itself uses that exact name.

The discovery layer groups; it must not silently rewrite institutional facts.

---

# 27. Programme Identity vs Field vs Subject vs Classification

These concepts must not be casually merged.

### Programme offering

What the institution offers:

```text
B.Sc. Computer Science
```

### DiscoveryProgramme

A StudyNexus concept for standardized discovery:

```text
Computer Science
```

### Field

A broader area of study, for example:

```text
Information and Communication Technologies
```

### Classification

A mapping in an external or internal scheme:

```text
ISCED-F = 061
```

These may relate, but they are not necessarily the same domain concept.

---

# 28. Multiple Classification Schemes Must Be Supported

StudyNexus should not assume that one classification standard is globally correct.

A generic architecture should support:

```text
ClassificationScheme
```

Examples:

```text
ISCED-F
CIP
HECoS
NUC/CCMAS
NBTE-related scheme
NCCE-related scheme
future national schemes
StudyNexus internal classification
```

The exact scheme inventory should be configuration/data-driven, not hard-coded into columns.

---

# 29. Country-Specific Classification Should Be Configurable

A country may have a preferred or primary local classification context.

Conceptually:

```text
Nigeria
    preferred classification:
        NUC/CCMAS for applicable university data
        NBTE for applicable TVET data
        NCCE for applicable NCE/teacher-education data

United Kingdom
    preferred classification:
        HECoS

United States
    preferred classification:
        CIP
```

This does **not** mean the offering can only have one classification.

It means the country/jurisdiction can have defaults for the data pipeline or UI.

---

# 30. An Offering Can Have Multiple Classifications

Example:

```text
InstitutionOffering
"B.Sc. Computer Science"

    ├── StudyNexus Discovery → Computer Science
    ├── ISCED-F → 061
    └── CIP → 11.0701
```

Another offering might have:

```text
InstitutionOffering
"BSc Computer Science"

    ├── StudyNexus Discovery → Computer Science
    ├── ISCED-F → 061
    └── HECoS → <code>
```

A Nigerian programme can be classified under the relevant Nigerian framework plus an international scheme without making the international scheme authoritative over the Nigerian naming.

---

# 31. Recommended Classification Data Model

A generic relational model is preferable to adding columns such as:

```text
cip_code
isced_code
hecos_code
nigeria_code
ghana_code
uk_code
...
```

to `InstitutionOffering`.

Instead:

```text
ClassificationScheme
--------------------
id
name
slug
jurisdiction_id (nullable)
version
status
```

```text
ClassificationConcept
---------------------
id
classification_scheme_id
code
name
description
parent_id (nullable, if the scheme is hierarchical)
version/status fields as required
```

Then a mapping table:

```text
OfferingClassification
----------------------
id
institution_offering_id
classification_concept_id
source_id / provenance fields
confidence
status
reviewed_at
```

This supports multiple schemes without polluting the core offering table.

---

# 32. Classification Can Be Many-to-Many Where the Domain Actually Requires It

Do not choose one-to-many or many-to-many merely to avoid a junction table.

For classification, M:N may be correct.

Example:

```text
InstitutionOffering
        │
        ├── Scheme A → concept 1
        ├── Scheme B → concept 2
        └── StudyNexus → concept 3
```

Or within a particular subject classification, a genuinely interdisciplinary offering might receive multiple legitimate subject mappings if the chosen classification allows that.

However, M:N should not automatically mean:

```text
one offering = several programmes
```

A combined or interdisciplinary programme can still be a distinct programme offering.

The relationship should follow the semantics of the classification scheme.

---

# 33. Do Not Assume a Combined Programme Equals Several Programmes

Example:

```text
B.Sc. Computer Science and Mathematics
```

It may be tempting to map it directly to:

```text
Computer Science
Mathematics
```

But that does not necessarily mean the institution offers two separate programmes.

It may be one combined programme.

Therefore StudyNexus must distinguish:

```text
programme identity
```
from:

```text
subject/field classification
```

This is another reason classification must be a separate layer.

---

# 34. Country Data: One Database or Separate Databases?

Recommended decision:

> **One PostgreSQL database; logical country/jurisdiction separation inside the shared model.**

Do not create:

```text
Nigeria database
Ghana database
Kenya database
UK database
USA database
```

for the initial architecture.

---

# 35. Why One Database Is Better for StudyNexus

StudyNexus is fundamentally a cross-country discovery system.

Future questions may include:

- institutions offering Computer Science in Nigeria;
- institutions offering Computer Science in Nigeria and Ghana;
- programmes available in a geographic region across countries;
- international comparisons;
- global search;
- common classification relationships;
- global institution discovery.

With a single database, these are natural queries.

With separate databases, every cross-country query becomes an aggregation problem:

```text
query Nigeria
+
query Ghana
+
query Kenya
+
merge
+
normalize
+
sort
+
paginate
```

That introduces unnecessary complexity into:

- queries;
- search projection;
- analytics;
- ETL;
- backups;
- monitoring;
- reporting;
- relationships;
- reconciliation.

---

# 36. Logical Independence Is More Important Than Physical Database Independence

The correct principle is:

> **Separate country-specific rules and data semantics logically; do not physically split the database unless an operational reason emerges.**

Examples:

```text
Global core
    Institution
    Campus
    InstitutionOffering
    Geography
    Source

Country/jurisdiction-specific
    admission rules
    qualification rules
    regulatory relationships
    local classifications
    local source authorities
```

This aligns with a modular monolith architecture.

---

# 37. Do Not Put Every Country's Admission Fields on One Table

Avoid designs such as:

```text
InstitutionOffering
    jamb_score
    utme_subjects
    ucas_code
    tariff_points
    canadian_requirement
    australian_requirement
    ...
```

This becomes a nullable-column nightmare.

Instead, admissions and regulatory data should have their own bounded structures capable of being jurisdiction-aware.

For example:

```text
AdmissionPolicy
    │
    ├── jurisdiction
    ├── qualification/level context
    ├── entry route
    ├── requirements
    └── source/provenance
```

Country-specific rules can then evolve without changing the meaning of the global `InstitutionOffering`.

---

# 38. Country/Jurisdiction Should Be Data, Not a Set of Models

Do not create:

```text
NigeriaInstitution
NigeriaOffering
GhanaInstitution
GhanaOffering
UKInstitution
UKOffering
```

Instead:

```text
Institution
    country/jurisdiction context

InstitutionOffering
    institution_id
```

The institution's jurisdiction and applicable regulatory context determine which country-specific rules are relevant.

---

# 39. Geographic Areas Need Their Own Domain Model

Avoid hard-coding:

```text
NigeriaState
GhanaRegion
UKCounty
```

as unrelated concepts unless a genuine domain distinction requires it.

A generic:

```text
GeographicArea
```

can represent the hierarchy, while the data records the type and parent/ancestor relationships.

Example:

```text
Nigeria [country]
  ↓
Benue [state]
  ↓
Makurdi [city]
```

and:

```text
Ghana [country]
  ↓
Ashanti [region]
  ↓
Kumasi [city]
```

The discovery system can then query by geographic area and ancestors/descendants.

---

# 40. The Discovery Programme List Should Be Built, Not Assumed

There is no single authoritative global download called:

> “The standard list of StudyNexus discovery programmes.”

Instead, StudyNexus should construct its discovery vocabulary from:

1. actual programme offerings;
2. authoritative national programme lists;
3. reputable international classifications;
4. search/user demand;
5. editorial decisions;
6. observed naming patterns;
7. classification mappings.

The list is therefore an **internal product vocabulary**, informed by external sources.

---

# 41. Recommended Nigerian Seed Sources for Discovery Vocabulary

For the Nigerian launch, use multiple sources rather than a single master.

### University-oriented

```text
NUC CCMAS
+
JAMB IBASS
+
actual institution programme listings
```

NUC currently publishes CCMAS materials by discipline. citeturn921549search3

JAMB IBASS exposes programme/institution eligibility data and programme-specific requirements. citeturn921549search1

### Polytechnic / TVET

```text
NBTE directories / curricula / accreditation resources
+
actual institutional offerings
```

NBTE publishes accredited programme directories and related curriculum/standards resources. citeturn303941search1turn303941search3

### Colleges of Education / NCE

```text
NCCE resources / minimum standards / accredited colleges
+
actual institutional offerings
```

NCCE provides official information on NCE education and accredited colleges. citeturn303941search2turn303941search10turn303941search14

---

# 42. Recommended Global Expansion Strategy

When adding a new country:

```text
1. Identify the country's educational institutions and regulators
2. Identify local programme/qualification sources
3. Identify local classification systems
4. ingest actual institutional offerings
5. preserve official names
6. derive candidate discovery concepts
7. map selected concepts where valuable
8. map external classifications where useful
9. publish only useful discovery pages
```

Do **not** redesign the global database for every new country.

Instead, add:

```text
country/jurisdiction data
+
source connectors
+
country-specific rules
+
classification mappings
```

---

# 43. The Product Should Be Able to Operate with Unresolved Offerings

An unresolved offering should still appear on:

- institution profile pages;
- search results;
- programme lists;
- source-linked records;
- relevant filters that do not require classification.

It simply might not appear under certain curated standardized discovery pages yet.

This is strategically important because it prevents classification backlog from becoming data backlog.

---

# 44. Suggested Offering Classification Status

Potential status model:

```text
UNRESOLVED
    ↓
CANDIDATE
    ↓
APPROVED
```

Possible branches:

```text
CANDIDATE → REJECTED
APPROVED → DEPRECATED
```

The system should maintain provenance:

```text
who/what proposed it
when
source evidence
classification scheme/version
confidence
who approved/rejected it
```

---

# 45. Classification Versioning Matters

Classifications can evolve.

Therefore mappings should not be treated as immutable forever.

A mapping should be able to say:

```text
scheme = CIP
version = 2020
code = 11.0701
```

or:

```text
scheme = HECoS
version = 9.0
code = ...
```

Similarly, a StudyNexus discovery concept can evolve without rewriting the historical institutional source name.

---

# 46. Source Data Must Remain Separate from Normalization

The source should remain something like:

```text
InstitutionOffering
name = "B.Sc. Computer Science and Information Technology"
source = institution page / authoritative source
```

Normalization should be additive:

```text
normalized_name = "computer science information technology"
```

Classification should be additive:

```text
discovery_programme_id = ...
```

Nothing should overwrite the original source identity.

---

# 47. Recommended Pipeline

```text
SOURCE
  │
  ▼
Immutable capture
  │
  ▼
Validation
  │
  ▼
Institution / Campus / Offering persistence
  │
  ▼
Domain events
  │
  ▼
Typesense projection
  │
  ├───────────────┐
  ▼               ▼
Search       Classification
                  │
                  ├── normalization
                  ├── candidate matching
                  ├── external classification
                  └── HITL review
                  │
                  ▼
           approved mappings
                  │
                  ▼
           DiscoveryProgramme
                  │
                  ▼
        DiscoveryLandingPage
                  │
                  ▼
               SEO
```

This is intentionally asynchronous in architecture, even if some steps are performed synchronously in small cases.

---

# 48. What Typesense Should Know

Typesense is the search projection, not the system of record.

An offering document can contain:

```text
institution_id
institution_name
offering_id
official_name
normalized_name
qualification
level
campus
geography IDs / searchable geography labels
discovery programme ID/name when available
classification labels when useful
source freshness metadata where relevant
```

This allows search to work before perfect taxonomy coverage.

PostgreSQL remains the source of truth.

---

# 49. Recommended Search Behavior

A user's query should not necessarily be interpreted as:

> “Find an exact DiscoveryProgramme.”

Instead, the search experience can combine:

```text
raw offering search
+
known DiscoveryProgramme
+
institution search
+
geography
+
filters
```

Example:

```text
User: "computer science"
```

Possible UI:

```text
Programme
Computer Science

Institutions
University of Lagos
University of Ibadan
...

Offerings
B.Sc. Computer Science
B.Sc. Computer Science and Information Technology
B.Tech. Computer Science
...
```

The product can guide users toward a curated DiscoveryProgramme when one exists without making classification the only search mechanism.

---

# 50. DiscoveryProgramme Matching Rules

A DiscoveryProgramme can eventually support controlled rules rather than free-form strings.

Example:

```text
DiscoveryProgramme
Computer Science

INCLUDE
- Computer Science
- Computing Science

EXCLUDE
- Computer Engineering
```

But rules should not rely exclusively on substring matching.

Possible future inputs:

- exact normalized names;
- alias vocabulary;
- qualification context;
- institution source context;
- programme description;
- subject/content evidence;
- external classification suggestions;
- human-approved mappings;
- negative examples.

---

# 51. Positive and Negative Examples Are Valuable

For classification, a good matching system should know both:

```text
Computer Science
→ yes
```

and:

```text
Computer Engineering
→ no
```

This prevents over-broad keyword rules.

Human decisions can therefore become training/evaluation evidence for future matching.

---

# 52. A Concept Can Be Popular Without Being Perfectly Defined

DiscoveryProgramme exists for product usefulness, not scientific perfection.

For example:

```text
Computer Science
```

may be a highly valuable user-facing concept even if some institutional programmes near its boundary are difficult to classify.

The system should therefore distinguish:

```text
concept usefulness
```
from:

```text
perfect universal semantic equivalence
```

This helps StudyNexus ship useful discovery experiences without pretending to have solved global education ontology.

---

# 53. Discovery Pages Should Display the Evidence Behind the Grouping When Appropriate

Because mappings can be fuzzy, a page may benefit from transparent labels.

For example, an institution card could show:

```text
Institution's programme name
B.Sc. Computer Science and Information Technology
```

and the page heading might be:

```text
Institutions Offering Computer Science in Benue
```

The underlying wording remains institution-owned, while the page heading is StudyNexus discovery language.

This reduces the risk that users interpret the StudyNexus label as the institution's official title.

---

# 54. The SEO Page Is Not the Data Model

Do not make the SEO URL the canonical identity of the offering.

Example:

```text
/institutions-offering/computer-science/benue
```

is an editorial/publication artifact.

The actual data remains:

```text
Institution
InstitutionOffering
GeographicArea
```

and the page is generated from those entities plus a DiscoveryProgramme concept.

This separation keeps the domain model stable even if URL architecture changes later.

---

# 55. SEO Publication Should Be Selective and Reversible

A page can move through states:

```text
draft
review
published
noindex
unpublished
deprecated
redirected
```

This is important because search demand, data quality, and programme availability change.

The underlying offerings should not be deleted merely because a landing page disappears.

---

# 56. Avoid Taxonomy Explosion

A common failure mode is creating a canonical concept for every distinct title.

Example:

```text
Computer Science
Computer Science & IT
Computer Science with IT
Computer Science and Information Technology
Computing Science
```

If each becomes an independent discovery concept, the standardization layer has failed.

The opposite failure is merging too aggressively:

```text
Computer Science
Computer Engineering
Information Systems
Information Technology
Software Engineering
Data Science
```

into one concept.

The correct system is controlled consolidation based on evidence, not maximum merging and not maximum splitting.

---

# 57. Discovery Concepts Should Be Explicitly Governed

A `DiscoveryProgramme` should eventually support:

```text
id
name
slug
description
status
created_at
updated_at
```

Potential additional metadata:

```text
display_name
short_description
search aliases
SEO eligibility
publication eligibility
classification mappings
parent discovery category (if truly required)
```

However, do not prematurely build a huge ontology.

Start with concepts that have demonstrated product value.

---

# 58. How to Seed the Discovery Vocabulary

Recommended Nigeria-first process:

```text
Step 1
Collect NUC/JAMB/NBTE/NCCE programme vocabulary where applicable

Step 2
Collect actual institution programme offerings

Step 3
Normalize obvious formatting differences

Step 4
Identify recurring programme identities

Step 5
Create candidate DiscoveryProgrammes

Step 6
Approve high-value concepts

Step 7
Create mapping rules / aliases

Step 8
Resolve important and ambiguous offerings

Step 9
Attach external classifications where useful

Step 10
Publish only useful programme × geography landing pages
```

This means the discovery list is **derived from the real data and product need**, rather than imagined in advance.

---

# 59. What Happens When a New Country Is Added?

Suppose Ghana is added.

Do not create a Ghana-only master programme table.

Instead:

```text
Country = Ghana

Add:
- Ghana institutions
- Ghana geography
- Ghana qualification structures
- Ghana admission rules
- Ghana source authorities
- Ghana programme terminology
- Ghana classification mappings
```

Institution offerings still use the same entity:

```text
InstitutionOffering
```

If a Ghanaian source has:

```text
"BSc Computer Science"
```

it can be matched to an existing StudyNexus DiscoveryProgramme:

```text
Computer Science
```

without changing the global core.

---

# 60. Country-Specific Standards Should Be Optional

A country does not need to have an external classification scheme available before StudyNexus can ingest its programmes.

A new country can start with:

```text
actual institution offerings
+
StudyNexus discovery concepts where applicable
```

and later add:

```text
national classification
international classification
```

This makes expansion operationally easier.

---

# 61. One Global StudyNexus Discovery Vocabulary Is Still Possible

Global consistency is still achievable.

For example:

```text
StudyNexus DiscoveryProgramme
Computer Science
```

can be associated with institution offerings from:

```text
Nigeria
Ghana
Kenya
UK
USA
Philippines
Canada
Australia
```

The underlying institutional names remain local.

That produces the desired user experience:

```text
Computer Science

Nigeria
  University A
  University B

Ghana
  University C

UK
  University D
```

without claiming that every country's local programme taxonomy is identical.

---

# 62. Cross-Country Comparability Should Come from Mappings, Not Forced Identity

Do not assume:

```text
same StudyNexus discovery concept
=
identical programme in every legal/academic sense
```

Instead, the concept is a discovery grouping.

External classification codes and country-specific details preserve local semantics.

This lets StudyNexus answer:

> “Show me institutions that offer programmes related to this discovery concept.”

while still preserving:

> “What exactly does this institution call and regulate this programme?”

---

# 63. Recommended Relationship Overview

```text
Country / Jurisdiction
        │
        ├──────────────┐
        │              │
        ▼              ▼
GeographicArea    ClassificationScheme
        │              │
        │              ▼
        │      ClassificationConcept
        │              │
        ▼              │
   Institution          │
        │               │
        ▼               │
InstitutionOffering ────┘
        │
        ├── optional OfferingClassification
        │
        └── optional DiscoveryProgramme mapping

DiscoveryProgramme
        │
        ▼
DiscoveryLandingPage
        │
        ▼
SEO / canonical URL / sitemap publication
```

This is a conceptual model; exact table boundaries should be finalized during domain/database design.

---

# 64. Recommended Initial Tables / Entities

A sensible conceptual starting point is:

### Global/core

```text
Country / Jurisdiction
GeographicArea
Institution
Campus
InstitutionOffering
Qualification
Source / InformationSource
```

### Discovery

```text
DiscoveryProgramme
DiscoveryProgrammeRule
DiscoveryLandingPage
```

### Classification

```text
ClassificationScheme
ClassificationConcept
OfferingClassification
```

The exact entity boundaries may change during implementation, but these responsibilities should remain distinct.

---

# 65. Important: `InstitutionOffering` Is Not Necessarily a “Programme Master Record”

The offering is contextual.

The same programme family may appear as different institutional offerings because of:

- qualification title;
- award type;
- specialization;
- combined disciplines;
- curriculum;
- jurisdiction;
- institutional naming.

Therefore the raw offering record should remain associated with:

```text
institution
campus
qualification
level
study mode
source
admission context
```

and not be flattened into a global programme identity.

---

# 66. Qualification Must Remain Separate

Do not put degree abbreviations inside the programme identity and assume they are always interchangeable.

For example:

```text
B.Sc. Computer Science
HND Computer Science
MSc Computer Science
PhD Computer Science
```

share a subject/programme family but are not the same qualification.

The model should therefore distinguish:

```text
programme/discovery identity
```
from:

```text
qualification / level
```

This also makes cross-country expansion more practical because degree naming systems vary significantly.

---

# 67. Potential Future Relationship: One Offering, Multiple Subject Classifications

There may be legitimate cases where an offering should be associated with more than one field/subject classification.

Example:

```text
B.Sc. Computer Science and Mathematics
```

could have:

```text
StudyNexus DiscoveryProgramme:
    Computer Science and Mathematics

Subject/field classifications:
    Computer Science
    Mathematics
```

The fact that an offering has multiple subject classifications does not force StudyNexus to pretend it is two separate programmes.

This distinction should be preserved.

---

# 68. Do Not Overbuild the Taxonomy in MVP

For the first public vertical slice, avoid creating:

- a universal global programme ontology;
- thousands of manually curated concepts;
- a global semantic graph;
- exhaustive classification mappings;
- manually reviewed mappings for every institution;
- every possible programme × geography landing page.

The MVP should prove:

```text
actual institutional data
+
search
+
useful curated discovery concepts
+
selective SEO landing pages
```

before expanding the taxonomy.

---

# 69. Suggested MVP Rule for DiscoveryProgrammes

A candidate DiscoveryProgramme should generally be promoted when at least one of these is true:

- many institutions offer it;
- users search for it frequently;
- it supports a valuable geographic discovery page;
- it is clearly represented in authoritative national sources;
- it is central to the site's initial vertical;
- it creates useful cross-institution comparison.

Again, these are decision criteria, not rigid thresholds.

---

# 70. Long-Tail Programme Example

Suppose one institution offers:

```text
MSc Advanced Marine Corrosion and Offshore Materials Engineering
```

The system should be able to ingest and display that offering without requiring StudyNexus to create a discovery concept immediately.

Later, if:

- several institutions offer similar programmes;
- users search for it;
- there is useful demand;
- StudyNexus has evidence for a stable grouping;

then a discovery concept can be created.

This is demand-driven ontology growth.

---

# 71. Data Quality Rule: MISSING ≠ DELETE

A classification field being NULL means:

```text
classification not currently established
```

It does not mean:

```text
programme does not exist
```

Likewise:

```text
no DiscoveryProgramme mapping
```

must not imply:

```text
institution no longer offers programme
```

Availability and classification are separate concerns.

---

# 72. Provenance Must Be Preserved

Every classification or mapping that matters should be traceable to evidence.

Potential provenance fields include:

```text
source_id
source URL/reference
source version/date
method
AI suggestion metadata
human reviewer
review timestamp
confidence
classification scheme/version
```

This is especially important when StudyNexus claims that:

> Institution X offers programme Y.

The source evidence belongs to the offering record; the mapping evidence belongs to the classification/discovery association.

---

# 73. Discovery Rules Must Not Mutate Source Names

Never normalize by overwriting:

```text
raw institutional programme name
```

Instead store:

```text
raw_name
normalized_name
```

Example:

```text
raw_name:
"B.Sc. Computer Science and Information Technology"

normalized_name:
"computer science and information technology"
```

The original form remains available for display and audit.

---

# 74. Potential Matching Pipeline

A future matching system can use several layers:

```text
Layer 1: exact normalized match

Layer 2: alias / synonym match

Layer 3: controlled rule match

Layer 4: external classification evidence

Layer 5: semantic similarity

Layer 6: AI hypothesis

Layer 7: human review
```

This is safer than:

```text
LLM says it looks similar → automatically authoritative
```

---

# 75. Confidence Should Be Contextual

A confidence score alone should not decide a mapping.

For example:

```text
0.95 similarity
```

could still be wrong if two names differ in a legally meaningful specialization.

Confidence should therefore be combined with:

- rule evidence;
- exclusion rules;
- qualification context;
- institution context;
- source evidence;
- human review requirements.

---

# 76. Discovery Programme Mapping Can Be One-to-Many

A single DiscoveryProgramme can correspond to many institution offerings:

```text
Computer Science
    │
    ├── UNILAG offering
    ├── UI offering
    ├── Bowen offering
    ├── FUTA offering
    └── other offerings
```

This is the primary many-to-one relationship needed for the discovery layer.

The key is that the reverse relationship does not need to imply that the discovery concept owns the institution's official name.

---

# 77. Do Not Force Every Institution Offering Into One Discovery Programme

There will be legitimate NULLs:

```text
InstitutionOffering A → Computer Science
InstitutionOffering B → NULL
InstitutionOffering C → Data Science
InstitutionOffering D → NULL
```

NULL should be considered a normal operating state.

That is a scalability feature, not a data-quality failure by itself.

---

# 78. Separate Discovery Classification from Regulatory Accreditation

These must not be conflated.

Example:

```text
Programme is classified as Computer Science
```

does not imply:

```text
Programme is accredited by regulator X
```

Likewise:

```text
Programme appears in JAMB
```

does not by itself mean:

```text
StudyNexus should map it to a particular global canonical identity
```

Different source facts have different semantics.

---

# 79. Separate Discovery from Admission Eligibility

A programme can exist as a discovery result even when a particular user's admission eligibility is unknown.

For example:

```text
InstitutionOffering
    ↓
Computer Science discovery page
```

can exist independently from:

```text
JAMB eligibility
O'Level requirements
Direct Entry requirements
```

Those are related domain data, not the identity of the discovery concept.

---

# 80. Separate Discovery from Accreditation State

A programme may be listed historically, currently, conditionally, or at another campus.

Therefore:

```text
programme identity
```

should not be replaced by:

```text
current accreditation state
```

Accreditation is time-sensitive and source-specific.

---

# 81. Recommended Page Data Model

A discovery landing page can conceptually reference:

```text
DiscoveryProgramme
GeographicArea

plus computed result set:

InstitutionOfferings
Institutions
Campuses
Qualification/level summaries
Admission information
```

The result set does not need to be persisted as 500,000 page-specific copies.

It can be computed/projected from source data.

---

# 82. Avoid Materializing Every Page Result Set

Do not create a table such as:

```text
page_offering_links
```

for every possible programme × geography page unless profiling proves it is necessary.

A better initial approach is:

```text
DiscoveryLandingPage
    defines the query parameters
```

and Typesense/PostgreSQL retrieves the current matching offerings.

If specific snapshots or editorial curation become necessary later, materialization can be introduced selectively.

---

# 83. Current Data vs Published SEO Data

A published page may need to be stable enough for SEO even though underlying data changes.

Therefore, distinguish:

```text
live discovery query
```

from:

```text
publication state / canonical page definition
```

A page can remain published while its list of institutions updates as source data changes, provided the page continues to satisfy quality requirements.

---

# 84. SEO Page Quality Must Depend on More Than Row Count

A page with:

```text
2 institutions
```

may still be valuable in some contexts.

A page with:

```text
100 institutions
```

could still be poor if every institution has stale data or the page contains little useful information.

Therefore the publication policy should consider data richness, uniqueness, usefulness, and freshness, not just quantity.

---

# 85. Candidate Discovery Query vs Canonical Page

A user can create/filter a query such as:

```text
Computer Science + Benue
```

without that automatically becoming:

```text
canonical SEO page
```

The canonical page exists only if StudyNexus elects to publish it.

This keeps product discovery broad and SEO publication selective.

---

# 86. This Solves the Route-Bloat Problem

The application can use a small set of dynamic routes.

Conceptually:

```text
Route::get('/institutions-offering/{programme}/{location}', ...)
```

rather than:

```text
route for every programme
route for every country
route for every state
route for every city
route for every combination
```

The route system remains small while the content space can scale dynamically.

---

# 87. Sitemaps Should Contain Published Canonical Pages, Not Every Query

The sitemap system should emit only URLs that the publication layer has determined deserve indexing.

Example:

```text
published
    /institutions-offering/computer-science/nigeria
    /institutions-offering/computer-science/benue
    /institutions-offering/nursing/nigeria
```

while arbitrary filters remain outside the canonical sitemap inventory.

This supports StudyNexus's broader SEO policy of controlling canonical/indexable combinations.

---

# 88. Canonical URL Generation Should Be Data-Driven

The canonical identity should derive from:

```text
DiscoveryProgramme.slug
+
GeographicArea.slug/path
```

not from arbitrary query-string ordering.

This allows the page definition to own the canonical URL semantics without hard-coding hundreds of routes.

---

# 89. Recommended Naming

A useful naming vocabulary is:

```text
InstitutionOffering
```

for the institution-specific record.

```text
DiscoveryProgramme
```

for the StudyNexus standardized discovery concept.

```text
ClassificationScheme
```

for a taxonomy such as ISCED-F, CIP, HECoS, or a country-specific scheme.

```text
ClassificationConcept
```

for one code/term within a scheme.

```text
OfferingClassification
```

for the mapping between an offering and a classification concept.

```text
DiscoveryLandingPage
```

for a published programme × geography discovery experience.

These names should remain subject to the final bounded-context model, but the responsibilities should stay distinct.

---

# 90. Alternative Architecture A — Giant Global Master Programme List

## Model

```text
Programme
    │
    └── InstitutionOffering
```

## Advantages

- easy to understand initially;
- clean foreign-key relationships;
- standardized names immediately available.

## Problems

- assumes a globally complete catalogue is possible;
- creates country terminology conflicts;
- makes ingestion dependent on classification;
- generates huge editorial burden;
- struggles with new/unique programmes;
- encourages false semantic equivalence;
- can become a bottleneck for expansion.

## Decision

**Reject as the core model.**

---

# 91. Alternative Architecture B — Every Offering Gets `canonical_slug`

## Model

```text
InstitutionOffering
    canonical_slug
```

## Advantages

- extremely simple schema;
- no mapping table;
- fast to implement.

## Problems

- no database-level semantic integrity;
- typo/drift risk;
- difficult to attach metadata to the concept;
- impossible to cleanly support multiple classification schemes;
- encourages a hidden master list without a proper entity.

## Decision

**Reject as the long-term solution.**

A normalized search field may exist, but it should not be the semantic source of truth.

---

# 92. Alternative Architecture C — Classify Every Offering Against ISCED-F

## Advantages

- internationally oriented;
- relatively simple hierarchy;
- useful for broad field reporting.

## Problems

- still creates 500,000 classification tasks;
- too coarse for many discovery page names;
- not a global programme catalogue;
- not enough resolution for StudyNexus's user-facing programme discovery needs. citeturn921549search60

## Decision

**Reject as a mandatory workflow.**

Use ISCED-F as an optional external classification layer.

---

# 93. Alternative Architecture D — CIP as the Universal Global Programme Backbone

## Advantages

- granular;
- structured;
- detailed six-digit programme classifications;
- useful for U.S. data. citeturn921549search61

## Problems

- U.S.-specific framework;
- not a universal international authority;
- still requires significant matching work;
- can distort local educational terminology if treated as the canonical identity;
- does not eliminate the need for StudyNexus-specific discovery concepts.

## Decision

**Reject as the universal master.**

Use CIP as an external/reference classification where useful.

---

# 94. Alternative Architecture E — Separate Database per Country

## Advantages

- strong physical isolation;
- country-specific schemas could evolve independently.

## Problems

- cross-country search becomes expensive/complex;
- duplicated infrastructure;
- duplicated migrations;
- duplicated search pipelines;
- duplicated analytics/reporting;
- difficult global queries;
- unnecessary complexity at the current stage.

## Decision

**Reject for the initial/global architecture.**

Keep one database with jurisdiction-aware logical separation.

---

# 95. Recommended Architecture — Global Core + Optional Discovery + Pluggable Classifications

```text
                    ONE POSTGRESQL DATABASE

                          Country/Jurisdiction
                                  │
            ┌─────────────────────┴─────────────────────┐
            │                                           │
            ▼                                           ▼
      GeographicArea                             ClassificationScheme
            │                                           │
            ▼                                           ▼
       Institution                             ClassificationConcept
            │                                           ▲
            ▼                                           │
    InstitutionOffering ───── optional ── OfferingClassification
            │
            └──────── optional ───────── DiscoveryProgramme
                                              │
                                              ▼
                                    DiscoveryLandingPage
                                              │
                                              ▼
                                           SEO URLs
```

This is the preferred architecture.

---

# 96. The Core Data Ownership Rules

### Institution

Owns institution identity.

### InstitutionOffering

Owns the factual, institution-specific programme offering and its source evidence.

### DiscoveryProgramme

Owns the StudyNexus standardized discovery concept.

### ClassificationScheme

Owns the definition of an external/internal taxonomy system.

### ClassificationConcept

Owns one classification code/concept in a scheme.

### OfferingClassification

Owns the mapping between an offering and a classification concept, including evidence/review metadata.

### GeographicArea

Owns the geographic node/hierarchy.

### DiscoveryLandingPage

Owns publication/indexing semantics for a specific discovery concept + geography combination.

---

# 97. The Most Important Invariant

This should become a product/domain rule:

> **An InstitutionOffering must remain valid independently of whether StudyNexus has classified it.**

That one rule prevents the classification system from becoming a gatekeeper to your core education data.

---

# 98. Second Important Invariant

> **An institutional programme name must not be replaced merely because StudyNexus assigns it to a DiscoveryProgramme.**

Example:

```text
Raw institutional name:
"B.Sc. Computer Science and Information Technology"

StudyNexus discovery concept:
Computer Science
```

Both remain true.

---

# 99. Third Important Invariant

> **A country-specific classification scheme must not become the global definition of programme identity.**

Nigeria can use Nigerian frameworks.

The UK can use HECoS.

The U.S. can use CIP.

International comparisons can use ISCED-F.

StudyNexus can maintain its own discovery vocabulary.

These can coexist.

---

# 100. Fourth Important Invariant

> **A possible discovery URL is not automatically an indexable SEO page.**

The publication layer decides which programme × geography combinations deserve canonical pages.

---

# 101. Fifth Important Invariant

> **AI suggestions are hypotheses until accepted under the StudyNexus review policy.**

This protects data quality and provenance.

---

# 102. Sixth Important Invariant

> **Missing classification must not be interpreted as missing offering data.**

This protects acquisition completeness.

---

# 103. What the Final User Experience Can Look Like

### Search

```text
Search: computer science
```

StudyNexus can surface:

- Computer Science discovery concept;
- matching institutional offerings;
- institutions;
- geography;
- filters.

### Landing page

```text
Institutions Offering Computer Science in Benue
```

The page is backed by:

```text
DiscoveryProgramme = Computer Science
GeographicArea = Benue
```

and the results come from actual institution offerings.

### Institution page

```text
University X

Programmes
- B.Sc. Computer Science and Information Technology
- B.Sc. Software Engineering
- B.Sc. Cybersecurity
```

The institution's names remain intact.

---

# 104. What Happens When StudyNexus Encounters a New Name

Example:

```text
Institution Offering:
"BSc Computational Intelligence and Data Systems"
```

Pipeline:

```text
Persist raw offering
        ↓
Normalize
        ↓
Index
        ↓
Try existing matching rules
        ↓
If no reliable match:
    remain unresolved
        ↓
AI may suggest candidate
        ↓
Human review if appropriate
        ↓
Either:
    map to existing DiscoveryProgramme
OR
    create a new DiscoveryProgramme
OR
    leave unresolved
```

No architectural failure occurs if none of those happen immediately.

---

# 105. How This Scales Globally

```text
Nigeria
   institution offerings
   ↓
StudyNexus discovery concepts

Ghana
   institution offerings
   ↓
reuse existing concepts where appropriate
   +
create new concepts where necessary

Kenya
   institution offerings
   ↓
reuse / extend

UK
   institution offerings
   ↓
reuse / extend
   +
HECoS mappings

USA
   institution offerings
   ↓
reuse / extend
   +
CIP mappings
```

The shared core does not change.

---

# 106. What Should Be Country-Independent

These should be global/core concepts where possible:

```text
Institution
Campus
InstitutionOffering
GeographicArea
Country/Jurisdiction
Qualification (with jurisdiction-aware definitions where needed)
Source
DiscoveryProgramme
ClassificationScheme abstraction
```

---

# 107. What Should Be Country/Jurisdiction-Aware

Examples:

```text
admission rules
regulatory authorities
programme approval/accreditation
qualification frameworks
entry routes
national classification mappings
local naming conventions
source authorities
```

These should be represented through extensible models rather than country-specific duplicate core tables.

---

# 108. The Architecture Is a Modular Monolith, Not Microservices

The recommended approach is fully compatible with a Laravel modular monolith.

Conceptually:

```text
app/
    Domain/
        Institutions/
        ProgrammesOrOfferings/
        Discovery/
        Classification/
        Geography/
        Admissions/
        Scholarships/
        Sources/
```

Country-specific policies can live within relevant domain boundaries rather than being physically separated into databases/services.

---

# 109. Suggested Domain Boundaries

A plausible future bounded-context organization is:

```text
Institutions
    institution identity
    campuses

Offerings
    institution-specific programme offerings

Discovery
    standardized StudyNexus discovery concepts
    discovery rules
    discovery pages

Classification
    schemes
    concepts
    mappings

Geography
    geographic hierarchy

Admissions
    jurisdiction-aware admission requirements

Sources
    provenance
    source captures
    acquisition lineage
```

The exact DDD boundaries should be validated against the evolving model; these are product-discovery boundaries, not a final implementation mandate.

---

# 110. Recommended MVP Sequence

## Phase 1 — Facts first

Build:

```text
Country/Jurisdiction
Geography
Institution
Campus
InstitutionOffering
Qualification
Source/provenance
```

Make institutional offerings searchable.

---

## Phase 2 — Initial discovery concepts

Introduce:

```text
DiscoveryProgramme
```

with a relatively small curated vocabulary.

Seed primarily from real Nigerian data and authoritative Nigerian programme sources.

---

## Phase 3 — Matching

Introduce:

```text
DiscoveryProgrammeRule
```

plus automated suggestions and human review.

---

## Phase 4 — SEO publication

Introduce:

```text
DiscoveryLandingPage
```

and selectively publish valuable programme × geography pages.

---

## Phase 5 — External classifications

Introduce:

```text
ClassificationScheme
ClassificationConcept
OfferingClassification
```

and map selected concepts/offerings to ISCED-F, national schemes, CIP, HECoS, etc. as appropriate.

This ordering avoids making external classification a prerequisite for the first working discovery product.

---

# 111. How to Avoid a Future Database Overhaul

The safest early decisions are:

```text
InstitutionOffering is first-class
Country/Jurisdiction is first-class
GeographicArea is first-class
Classification schemes are generic
DiscoveryProgramme is separate from raw offerings
SEO publication is separate from domain identity
```

Avoid premature assumptions such as:

```text
one global programme table
one universal taxonomy
one classification scheme
one qualification model for every country
state = geography everywhere
one admission system
```

These assumptions are the real sources of future schema rewrites.

---

# 112. Product Discovery Questions Still Requiring Explicit Decisions

The architecture above resolves the broad problem, but several product decisions remain and should be documented before implementation:

### A. What exactly qualifies as a DiscoveryProgramme?

Is it:

- a programme identity;
- a field of study;
- a searchable subject;
- a user-facing category;
- or a combination of these?

Recommended answer: start with a **user-facing discovery concept**, while keeping fields/classifications separate.

### B. When should a raw offering be automatically mapped?

Define confidence/rule thresholds.

### C. When does an unresolved offering become important enough for review?

Possible triggers:

- search demand;
- repeated occurrence;
- page publication candidate;
- editorial review.

### D. Can one offering have multiple DiscoveryProgrammes?

Do not assume yes by default. Determine whether the business meaning is:

```text
one programme with multiple subjects
```

or:

```text
multiple actual programmes
```

before introducing M:N.

### E. Can one offering have multiple external classifications?

Yes, this should generally be supported through the classification layer.

### F. Which DiscoveryProgrammes deserve dedicated SEO pages?

This should be controlled by the publication policy.

### G. Which geographies deserve pages?

Again, use a publication policy rather than generating everything.

---

# 113. Recommended Conceptual ERD

```text
┌──────────────────┐
│ Country/Juris.   │
└────────┬─────────┘
         │
         ├──────────────────────────────┐
         │                              │
         ▼                              ▼
┌──────────────────┐             ┌─────────────────────┐
│ GeographicArea   │             │ ClassificationScheme │
└────────┬─────────┘             └──────────┬──────────┘
         │                                  │
         │                                  ▼
         │                         ┌─────────────────────┐
         │                         │ ClassificationConcept│
         │                         └──────────┬──────────┘
         │                                    │
         │                                    ▼
         │                         ┌──────────────────────┐
         │                         │OfferingClassification│
         │                         └──────────┬───────────┘
         │                                    │
         ▼                                    │
┌──────────────────┐                         │
│ Institution      │                         │
└────────┬─────────┘                         │
         │ 1:M                                │
         ▼                                    │
┌──────────────────┐                         │
│ Institution      │─────────────────────────┘
│ Offering         │
└────────┬─────────┘
         │ 0:1 / future controlled mapping
         ▼
┌──────────────────┐
│ Discovery        │
│ Programme        │
└────────┬─────────┘
         │
         │ 1:M
         ▼
┌──────────────────┐
│ Discovery        │
│ LandingPage      │
└──────────────────┘
```

This is conceptual only. Final cardinalities should be validated during domain modeling.

---

# 114. Recommended Data Ownership Example

```text
InstitutionOffering
-------------------
name:
    "B.Sc. Computer Science and Information Technology"

institution:
    Bowen University

qualification:
    Bachelor's degree

country:
    Nigeria

source:
    institution / regulator / JAMB evidence
```

Then:

```text
DiscoveryProgramme
------------------
name:
    Computer Science
```

Then:

```text
OfferingClassification
----------------------
scheme:
    ISCED-F
code:
    061
```

The three records answer three different questions.

---

# 115. Important Warning About “Canonical”

The term **canonical** should be used carefully.

A canonical URL is not the same thing as a canonical programme identity.

A StudyNexus discovery concept is not necessarily a universal truth.

An external classification code is not necessarily the institution's programme identity.

This vocabulary discipline will reduce future architectural confusion.

---

# 116. Recommended Terminology for Product/Engineering Docs

Use:

**Institution Offering**

> The programme offering as represented by a particular institution, preserving the institution's published terminology and context.

**Discovery Programme**

> A StudyNexus-controlled concept used to group and expose institution offerings for user discovery and SEO.

**Classification Scheme**

> A formal taxonomy/vocabulary used to classify educational subjects/programmes/fields, such as ISCED-F, CIP, HECoS, or a national framework.

**Classification Concept**

> A single code/term within a classification scheme.

**Discovery Landing Page**

> A published StudyNexus page representing a specific DiscoveryProgramme + GeographicArea combination.

---

# 117. Why This Architecture Is Future-Proof

It does not depend on:

- Nigeria being the only country;
- universities being the only institution type;
- ISCED-F being sufficiently detailed;
- CIP being globally authoritative;
- one qualification system;
- one admission process;
- one geography hierarchy;
- one classification taxonomy;
- perfect semantic matching;
- complete manual classification.

Instead it relies on stable abstractions:

```text
Institution
InstitutionOffering
Jurisdiction
GeographicArea
DiscoveryProgramme
ClassificationScheme
DiscoveryLandingPage
```

These abstractions remain useful as countries and educational systems change.

---

# 118. Final Recommendation

StudyNexus should adopt the following product/database strategy:

```text
1. Keep ALL institution-specific programme offerings.

2. Preserve each institution's exact published programme name.

3. Do NOT build a mandatory global master programme catalogue.

4. Do NOT require classification of every InstitutionOffering.

5. Keep Institution → InstitutionOffering as the fundamental 1:M relationship.

6. Create a smaller, curated StudyNexus DiscoveryProgramme layer.

7. Make DiscoveryProgramme mapping optional.

8. Build DiscoveryProgrammes from real data, authoritative sources, and product demand.

9. Treat ISCED-F, CIP, HECoS, and national schemes as classification schemes, not universal programme identities.

10. Support multiple classification schemes simultaneously.

11. Allow the country/jurisdiction to define preferred classification schemes without making them exclusive.

12. Keep country-specific rules logically independent while using one PostgreSQL database.

13. Use a generic GeographicArea hierarchy instead of assuming every country uses states.

14. Use Typesense for search over actual institution offerings, regardless of classification completeness.

15. Use automated matching/AI to propose mappings, not to silently redefine source facts.

16. Preserve provenance and human review for important/ambiguous mappings.

17. Treat unresolved classification as a normal state, not a data failure.

18. Build SEO landing pages from DiscoveryProgramme + GeographicArea.

19. Do not publish every possible programme × geography combination.

20. Maintain a selective SEO publication layer that determines which combinations deserve canonical/indexable pages.
```

---

# 119. The Core Mental Model

The entire architecture can be summarized as:

```text
                    WHAT EXISTS IN THE WORLD?
                              │
                              ▼
                      InstitutionOffering
                              │
                              │
                 searchable immediately
                              │
                              ▼
                 WHAT DOES STUDYNEXUS WANT
                    USERS TO DISCOVER TOGETHER?
                              │
                              ▼
                       DiscoveryProgramme
                              │
                              ▼
                  WHERE DOES THE USER WANT IT?
                              │
                              ▼
                       GeographicArea
                              │
                              ▼
                   SHOULD THIS BECOME AN SEO PAGE?
                              │
                       ┌──────┴──────┐
                       │             │
                      YES            NO
                       │             │
                       ▼             ▼
              DiscoveryLandingPage  Query/filter only
                       │
                       ▼
                       SEO
```

And classification sits beside that system:

```text
InstitutionOffering
        │
        └── optional classifications
                 │
        ┌────────┼─────────┐
        ▼        ▼         ▼
      ISCED-F    CIP      HECoS
        │
        └── plus country-specific schemes
```

This is the central product-discovery architecture.

---

# 120. Source References

Official/reference material used while preparing this decision document:

1. UNESCO Institute for Statistics — **ISCED Fields of Education and Training 2013**. It documents the 11 broad fields, 29 narrow fields, and approximately 80 detailed fields and explains the purpose/structure of the classification. citeturn921549search60
2. U.S. National Center for Education Statistics — **Introduction to CIP 2020**. Documents the two-, four-, and six-digit structure and the role of six-digit codes as detailed instructional programme classifications. citeturn921549search61
3. NCES — **CIP FAQ**. Provides guidance on selecting CIP codes and notes that some instructional programmes can appear in different series depending on programme focus. citeturn921549search8
4. HESA — **HECoS**. Describes HECoS as the UK higher-education subject coding system and its current vocabulary. citeturn921549search0turn921549search7
5. NUC — **CCMAS**. Provides discipline-specific CCMAS documents for Nigerian universities. citeturn921549search3
6. JAMB — **IBASS / Eligibility Checker**. Shows institution/programme-driven eligibility workflows and admission requirement checks. citeturn921549search1
7. JAMB — **IBASS brochures/notices**. Demonstrates programme and institution listings in Nigerian admission materials. citeturn921549search62turn921549search63
8. NBTE — **Directory of Accredited Programmes** and official resources for TVET institutions. citeturn303941search1turn303941search3turn303941search6
9. NCCE — official information and resources relating to Colleges of Education, NCE programmes, and accreditation. citeturn303941search2turn303941search10turn303941search14

---

# 121. Proposed Architecture Decision Record

**Decision:** StudyNexus will use a **global InstitutionOffering source-of-truth model**, with an **optional StudyNexus DiscoveryProgramme layer**, a **pluggable classification framework**, and a **selective programme × geography SEO publication layer**.

**Database:** One PostgreSQL database with jurisdiction-aware data and domain rules.

**Search:** Typesense projection of institution offerings and relevant normalized/discovery fields.

**Classification:** Optional; multiple schemes supported; country-specific scheme preferences allowed; no universal scheme assumed.

**Discovery:** Curated, demand-driven StudyNexus concepts rather than an exhaustive world programme catalogue.

**Automation:** Automated/AI matching may propose mappings; human approval governs authoritative mappings where required.

**SEO:** Dynamic discovery queries with selectively published canonical landing pages; possible URL combinations are not automatically indexable.

**Non-goal:** Exhaustively classifying every InstitutionOffering before the platform can function.

**Rationale:** This keeps factual education data complete and source-faithful while making normalization, global expansion, search, discovery, and SEO manageable at very large scale.
