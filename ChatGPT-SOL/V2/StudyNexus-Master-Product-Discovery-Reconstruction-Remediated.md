# StudyNexus — Master Product Discovery Reconstruction — Remediated Edition

**Forensic Validation, Remediation & Canonicalization Pass**  
**Date:** 2026-09-21  
**Purpose:** Evidence foundation for the next phase: **StudyNexus Ubiquitous Language**

## Remediation verdict

The previous reconstruction was directionally useful but not yet strong enough to be called canonical without qualification. The main weaknesses were not that the 555-file inventory was false; they were that **file accounting was too close to being treated as semantic completeness**, the claim/decision ledgers mixed several status dimensions, old delivery phases leaked into current-scope judgments, and two vocabulary areas—**Programme/Offering** and **Recognition/Accreditation**—remained insufficiently reconciled.

This edition corrects those defects. It does **not** restart discovery. It re-examines the original corpus, the previous reconstruction and the machine-readable artifacts, preserves valid historical reasoning, and changes conclusions where the evidence demands it.

The resulting Product Discovery is now suitable to begin Ubiquitous Language work **with one explicit semantic assumption**: `Institution Offering` is adopted as the preferred business term for the source-faithful institution-specific offering, and `Discovery Programme` is treated as a separate StudyNexus-curated discovery concept. This assumption is traceable, reversible, and does **not** freeze a database schema or bounded context.

No final DDD bounded contexts, LBC modules, aggregates, repositories, Laravel folders, or database tables are prescribed here.


# Part I — Reconstruction Integrity

## 1. Evidence method

The general discovery scaffold remains an established Continuous Discovery / Opportunity Solution Tree pattern: **outcome → customer opportunity/need → candidate solution → assumptions/tests**. StudyNexus requires an additional historical-forensics layer because much of its “evidence” is a chronology of stakeholder discovery, AI-assisted analysis, architecture experiments, decisions, reversals and remediation rather than continuous customer research.

For this remediation, each major conclusion is therefore interpreted across independent dimensions:

- **evidentiary relevance** — how directly the material informs the product/problem/domain;
- **decision authority** — whether the statement was proposed, approved, frozen, rejected, superseded, or merely architectural;
- **historical state** — what was believed at that time;
- **current scope state** — whether the capability/concept is now in current scope, excluded, deferred, pending decision or unknown;
- **delivery state** — whether it belonged to the old first slice, a later historical phase, or was unscheduled;
- **confidence** — how strongly the current interpretation follows from the evidence.

These dimensions must never be compressed back into one `status` field.

## 2. Corpus accounting

| Metric | Result | Assessment |
| --- | --- | --- |
| Total files inventoried | 555 | Exact filesystem inventory of the supplied corpus TAR. |
| Total directories | 87 | 86 nested directories plus corpus root. |
| Maximum nesting depth | 3 | Depth counted below corpus root. |
| File types | .md: 555 | All corpus files are Markdown. |
| Empty files | 1 | Ranking - Product Discovery Additions 03-09-2026.md is byte-empty. |
| Unreadable files | 0 | None. |
| Byte-unique documents | 186 | Every unique SHA-256 content item has a disposition row. |
| Exact duplicate copies | 369 | Copies beyond one representative per unique SHA-256. |
| Files participating in duplicate groups | 452 | 452 files belong to a group whose identical content appears at least twice. |
| Near-duplicate pairs | 50 | 50 pairs at cosine similarity >= 0.96; similarity does not imply semantic equivalence. |
| Near-duplicate clusters | 22 | Connected components over qualifying unique-document pairs. |
| Unique-document semantic dispositions | 186 | 186/186 byte-unique documents explicitly classified and examined. |
| Major claims | 85 | 85 major claims; ledger has 88 claim-source rows because multi-source claims are normalized. |
| Major decisions | 23 | 23 historical/current-remediation decision records; not every decision-like sentence in corpus. |

### What “comprehensive” means in this edition

**Inventory coverage:** 555/555 files discovered and accounted for.  
**Deduplication coverage:** every file SHA-256 calculated; exact copies grouped.  
**Near-duplicate coverage:** byte-unique documents compared with a reproducible similarity method; similarity is only a review aid.  
**Semantic examination coverage:** every one of the 186 byte-unique documents has an explicit disposition in `StudyNexus-Unique-Document-Disposition.csv`. Full text was loaded for classification; product/domain/governance-bearing documents were examined for claims, reversals, terminology and scope effects; implementation/architecture-only documents were still checked for embedded product assumptions before being dispositioned.  
**Claim coverage:** the claim ledger contains **major claims**, not every sentence. It now has 85 unique claim IDs and 88 claim-source rows.  
**Decision coverage:** the decision ledger contains **major historical decisions and remediation conclusions**, not every decision-like sentence. It has 23 records.

This is a stronger and more accurate stopping statement than “all 555 files were semantically synthesized.” The corpus is fully inventoried and every unique document is explicitly dispositioned; the claim ledger is intentionally selective at the level of **major product/domain claims**.

## 3. Unique-document disposition

| Disposition | Byte-unique documents |
| --- | --- |
| ARCHITECTURE_ONLY | 10 |
| DOMAIN_EVIDENCE | 11 |
| GOVERNANCE_EVIDENCE | 49 |
| HISTORICAL_EVIDENCE | 22 |
| IMPLEMENTATION_ONLY | 18 |
| METADATA_ONLY | 42 |
| PRODUCT_EVIDENCE | 28 |
| TECHNICAL_CONSTRAINT | 6 |

The disposition artifact is deliberately not an exclusion list. `ARCHITECTURE_ONLY`, `IMPLEMENTATION_ONLY`, and `TECHNICAL_CONSTRAINT` mean those documents cannot be used as primary proof that a user need exists; they were still examined for embedded historical discoveries, contradictions, reversals, and constraints.

## 4. Duplicate and near-duplicate accounting

There are 186 byte-unique documents and 369 additional exact copies. In total, 452 files participate in exact-duplicate groups. Repeated copies are not counted as independent corroboration.

The near-duplicate artifact was regenerated using **TF-IDF cosine similarity on full byte-unique Markdown text**, with lowercase normalization, Unicode accent stripping, word 1–2 grams, sublinear term frequency and L2 normalization. The review threshold is **0.96**. Pairs above the threshold are grouped by connected component. The artifact explicitly records `semantic_equivalence_inferred = NO` because a near-identical handoff may contain one changed sentence that reverses a decision.

## 5. Known corpus gaps

The corpus is unusually rich in stakeholder-defined requirements, AI-assisted domain analysis, architecture remediation and adversarial review, but weak in **completed primary user research**. It repeatedly proposes interviews, tests or validation, yet the corpus does not document a completed body of customer interviews, surveys, usability tests or behavioural analytics sufficient to empirically validate the priority/severity of the core problems. This does not erase the discoveries; it changes their evidence quality.

The dedicated September ranking file is byte-empty. Therefore no ranking product may be reconstructed from that file.

## 6. Artifact defects found and repaired

| Defect | Repair | Impact |
| --- | --- | --- |
| Inventory coverage was presented too close to semantic completeness. | The remediated edition distinguishes inventory, deduplication, near-duplicate analysis, unique-document semantic disposition, major-claim coverage and major-decision coverage. | The stopping condition is now auditable rather than inferred from the 555-file count. |
| The original 70-claim ledger overloaded historical status/current validity and represented a four-source claim as one concatenated pseudo-path. | Regenerated as 85 major claims / 88 claim-source rows with separate historical_state, current_scope_state and delivery_state fields. | Authority, scope and sequencing can no longer silently overwrite one another. |
| The historical decision ledger used opaque date strings and mixed present validity with past adoption. | Added date_from/date_to plus historical_state, current_scope_effect, delivery_effect and current assessment. | Decision reversal and supersession are chronologically legible. |
| Near-duplicate similarity methodology was undocumented. | Regenerated from byte-unique full Markdown using lowercase Unicode-normalized word 1–2 gram TF-IDF, sublinear TF, L2 normalization and cosine threshold 0.96; exact duplicates excluded first. | Similarity is reproducible and explicitly non-semantic. |
| Old Phase 2/3 labels were treated as quasi-current scope exclusions. | Created Current Scope Reassessment under the present operating rule; historical delivery and present scope are separate dimensions. | Comparison, funding, WF7, careers, News, Services, content and exams are no longer misclassified merely because they were absent from the old first slice. |
| Programme/ProgrammeInstance/InstitutionOffering/DiscoveryProgramme was left as a high blocker. | Resolved for UL with an explicit assumption: Institution Offering is the source-faithful business term; Discovery Programme is a distinct StudyNexus-curated concept; ProgrammeInstance is historical technical/domain language for contextual variation. | UL can proceed without pretending the database design is decided. |
| Recognition was drifting toward an architecture-created umbrella. | Corpus + official regulator evidence distinguish Accreditation, Qualification Recognition and institution approval/status; no universal Recognition noun is canonized. | Prevents the next phase from inheriting an unjustified bounded-context/module concept. |

### External corroboration used in remediation

External research was used narrowly after corpus reconstruction. It does **not** override StudyNexus decisions.

- Product Talk / Teresa Torres describes Opportunity Solution Trees as connecting a desired outcome to customer opportunities (needs/pain points/desires), possible solutions and assumption tests. This remains the methodological scaffold; the archaeology layer adds chronology, provenance, authority, rejection and supersession. Source: https://www.producttalk.org/opportunity-solution-trees/
- The National Universities Commission states that its accreditation function covers **academic programme accreditation** and **institutional accreditation**, supporting the corpus distinction between a scoped accreditation decision and a generic institution attribute. Source: https://www.nuc.edu.ng/project/accreditation/
- NBTE states that its mandate includes accreditation of academic programmes in TVET institutions and publishes directories of accredited programmes. Source: https://www.nbte.gov.ng/nbte/approved%20institutions and https://www.nbte.gov.ng/nbte/directory
- COREN currently exposes accreditation services for engineering programmes, supporting the corpus warning that professional/specialized accreditation may coexist with sector regulator accreditation. Source: https://portal.coren.gov.ng/


# Part II — Historical Discovery Reconstruction

## 7. Product identity

The oldest stable business discovery frames StudyNexus as a **trusted education knowledge platform**, initially focused on Nigeria, that aggregates, verifies, organizes and makes educational information searchable, comparable and trustworthy. The long-term aspiration is broader education infrastructure, but that future ambition is not the same as current delivery scope.

The corpus consistently identifies five problem dimensions:

1. **Fragmentation** — users piece information together across JAMB, WAEC, institution websites, scholarship sites, PDFs, blogs, social media, WhatsApp and personal networks.
2. **Trust** — users cannot confidently tell whether information is accurate, current or authoritative.
3. **Discoverability** — users miss relevant opportunities when they do not already know exactly what to search for.
4. **Comparison** — inconsistent terminology, tuition formats, admissions information and accreditation signals make side-by-side evaluation difficult.
5. **Accessibility** — even correct information can be practically inaccessible because it is buried, slow, mobile-unfriendly, PDF/scanned, high-data or poorly structured.

These remain the strongest high-level problem claims in the corpus. They are **stakeholder-defined and repeatedly adopted**, not direct empirical findings from completed customer research.

## 8. Users and jobs

The corpus identifies four primary user groups: secondary-school students/recent graduates, undergraduates, parents/guardians, and guidance counsellors/teachers. Secondary students/recent graduates were historically prioritized first, but the prioritization is a strategic assumption rather than an analytics-backed fact.

Recovered jobs include:

- find institutions and institution offerings that fit a goal;
- understand qualifications, delivery/study context, costs and accreditation;
- understand admissions requirements, pathways, cut-offs, screening and geographic considerations;
- compare alternatives on decision-relevant information;
- judge whether information is trustworthy/current and understand its source;
- discover funding opportunities and understand eligibility/benefits/application routes;
- for undergraduates, understand the current educational journey, transfers, scholarships, progression, postgraduate routes and internships;
- understand examinations and important schedules where relevant;
- find where/how to complete education-related external tasks;
- access news and durable educational explanation without losing connection to canonical facts.

The jobs are more stable than many of the models invented later to implement them.

## 9. Historical opportunity-to-solution evolution

Several recurring chains demonstrate why reconstruction must preserve the difference between problem and solution:

**Fragmented institution-specific programme information** → users need a faithful view of what each institution offers → early `Programme` concept → later abstract `Programme` aggregate → `ProgrammeInstance` introduced to capture campus/delivery context → Sep18 proposes `InstitutionOffering` as the source-faithful business concept and `DiscoveryProgramme` as a separate curation layer.

**Users cannot trust changing information** → provenance / verification / information quality capabilities → source/capture/candidate/reconciliation/review mechanisms → hard rule `MISSING ≠ DELETE` and “AI/user reports do not silently become canonical truth.”

**Users need exploration, not only exact search** → discovery capability → facets/classification/related concepts → selective discovery/SEO combinations → later distinction between source-faithful offering data and curated discovery concepts.

**Users need current exam information** → early exam-information scope → old first slice deprioritizes exam/resource surface → Sep02 proposes authority/product/administration/schedule-event semantics → practice/attempt/scoring remains a separate concern.

## 10. Product outcomes

The corpus does not provide validated quantitative product outcomes. The qualitative outcomes are clearer:

- users can make an education decision with less fragmented searching;
- users can discover relevant alternatives they did not already know;
- users can compare important information consistently;
- users can understand admissions, funding and access requirements;
- users can see enough source/freshness/history context to make a trust judgment;
- public information remains accessible on mobile/low-friction surfaces;
- StudyNexus can update knowledge without silently corrupting canonical truth.

Future work should convert these into measurable behavioural/product outcomes rather than feature-completion metrics.

## 11. Historical capability evolution

The original strategic MVP was a broad **Trusted Education Knowledge Base**, not merely the later programme-search first slice. It included acquisition, organization, verification, maintenance, discovery, search, comparison, presentation, provenance and information quality. Subsequent planning narrowed the first implementation/learning slice to programme/institution discovery plus admission/trust context. That narrowing was a delivery strategy, not a deletion of the broader product discovery.

Later September additions expanded or clarified current product concerns around funding, Catchment/ELDS, News/Post-UTME, Education Services & Access, examinations, and programme discovery/classification. Their approval states differ and are preserved.


# Part III — Decision Archaeology

## 12. Major decision chronology

The table below is intentionally selective: it lists decisions most important to present product semantics and scope. The complete normalized decision ledger is a companion artifact.

| ID | Date | Context | Problem | Decision | Historical state | Current scope effect | Later challenge |
| --- | --- | --- | --- | --- | --- | --- | --- |
| D001 | 2026-08-07 | Business discovery | Define product identity | Trusted education knowledge platform; search/discover/compare/verify | ADOPTED | CURRENT | No direct user validation |
| D002 | 2026-08-08 | Persona priority | Sequence primary users | Secondary student/graduate > undergraduate > parent > counsellor | ADOPTED | CURRENT | No analytics/interviews |
| D003 | 2026-08-08 | MVP identity | Need accounts? | No account for core MVP | ADOPTED | EXCLUDED_FROM_STRATEGIC_MVP | Future personalization needs identity |
| D004 | 2026-08-08 | Eligibility | Should system determine eligibility? | Start self-assessment, progress to structured evaluation | DEFERRED | CURRENT_REQUIREMENTS_DEFERRED_AUTOMATION | Future rule engine ideas |
| D005 | 2026-08-08 | Geography | Day-one countries | Nigeria only initially | ADOPTED | CURRENT | Sep additions stress international semantics |
| D006 | 2026-08-07 | Domain modelling | Programme Offering/Campus | Rejected/deferred | REVERSED | HISTORICAL_ONLY | Audit later found concrete instance variation |
| D007 | 2026-08-18 | Domain remediation | Programme instance/campus variation | Add ProgrammeInstance + Campus | ADOPTED | CURRENT | Sep18 introduces InstitutionOffering terminology |
| D008 | 2026-08-19 | Admissions scoping | Where policies/cutoffs apply | Move to ProgrammeInstance with institution fallback | ADOPTED | CURRENT | InstitutionOffering reconciliation unresolved |
| D009 | 2026-08-10 | First public vertical slice | How much scholarship UX | Public pages Phase2; entity/admin + inline relation in slice | ADOPTED | CURRENT_CAPABILITY_HISTORICAL_DELIVERY_DEFERRAL | Sep03 approves richer scholarship model but no roadmap amendment |
| D012 | 2026-08-19 | Acquisition trust | Where extraction/reconciliation operates | External acquisition with no production credentials; approved handoff | ADOPTED | CURRENT | V4.7 changes signing/atomicity mechanics |
| D013 | 2026-08-19 | Missing source data | How to treat absence | MISSING ≠ DELETE | ADOPTED | CURRENT | Reaffirmed Sep18 |
| D014 | 2026-09-03 | Admissions geography | Catchment/ELDS model | Policy-context geography; ELDS jurisdiction-specific | ADOPTED | CURRENT | Implementation scope not placed |
| D015 | 2026-09-03 | Funding discovery | Scholarship-only vs broader funding | Broaden to FundingOpportunity and provider handoff | DEFERRED | CURRENT | Phase2 public UX from earlier closure |
| D016 | 2026-09-03 | News | What owns changed facts | Underlying canonical domain owns fact; News reports/explains | ADOPTED | CURRENT | No contradiction |
| D018 | 2026-09-03 | Education services | Directory vs task-oriented discovery | Model user task/service access and authoritative handoff | ADOPTED | CURRENT | Roadmap placement unknown |
| D019 | 2026-09-02 | Examination scheduling | Minimum exam info model | Proposed authority→product→administration→schedule events | PROPOSED | CURRENT_SCOPE_PENDING_DECISION | Not approved; exams previously Phase2 |
| D020 | 2026-09-18 | Programme discovery scale | Global programme naming/classification | Propose InstitutionOffering + optional DiscoveryProgramme classification | PROPOSED | CURRENT_SCOPE_PENDING_DECISION | No ratification; ProgrammeInstance relationship unresolved |
| D021 | 2026-09-21 | Forensic remediation | Historical phase labels were being used as current scope exclusions | Treat historical delivery phase as separate from current product scope; apply present default-current rule while preserving explicit exclusions/dependencies. | CURRENT_REMEDIATION_RULE | CURRENT | None; future owner instruction may change |
| D022 | 2026-09-21 | Forensic vocabulary remediation | Programme / ProgrammeInstance / InstitutionOffering / DiscoveryProgramme overload blocks UL | For UL, use Institution Offering for source-faithful institution-specific offering and Discovery Programme for StudyNexus-curated discovery concept; treat ProgrammeInstance as historical technical/domain language for contextual variation. | RESOLVED_WITH_EXPLICIT_ASSUMPTION | CURRENT | Reopen if representative source data requires a stable separate business concept for offering variants or owner rejects terminology. |
| D023 | 2026-09-21 | Forensic vocabulary remediation | Recognition is too broad/overloaded for UL | Do not canonize a universal Recognition concept yet; use Accreditation for authority quality decisions and keep Qualification Recognition / Institution approval-status semantically distinct. | RESOLVED | CURRENT | Reopen if future discovery identifies a business workflow/rule shared across all recognition forms. |

## 13. Reversals and historically wrong decisions

### Programme Offering / Campus rejection

The early domain-resolution pass explicitly rejected a Campus entity and Programme Offering/Instance concept as premature. That decision was later falsified by concrete variation: the same named programme can differ by campus, delivery mode, academic period, tuition and admission conditions. The later audit treated the omission as a blocker and introduced `ProgrammeInstance` and `Campus`.

**What was wrong:** the earlier modelling decision.  
**What remained valid:** the desire not to over-model.  
**What the product actually learned:** concrete offering context matters when user-facing facts differ.

### ProgrammeInstance is not automatically the final product term

The later reversal solved a real modelling problem but created another risk: it elevated a technical decomposition into product language. Sep18 returns to the user-facing problem and proposes `InstitutionOffering`, preserving exact institutional terminology while allowing later classification. The remediation therefore keeps the *variation discovery* but does not canonize the technical word `ProgrammeInstance` for UL.

### Phase labels are not product deletions

Comparison, funding, examination/resource discovery, accounts, content and other areas were scheduled later than the first vertical slice. Those decisions are real historical delivery decisions. They are not evidence that the underlying product needs ceased to exist. The present remediation protocol explicitly requires current scope to be reassessed independently.

## 14. Disappeared discoveries reassessed

**Career pathways:** explicit need for the primary secondary-student persona; no explicit rejection found. Current but under-discovered.

**WF7 undergraduate current educational journey:** explicitly resolved as an approved workflow, later absent from focused product work. Current unless explicitly reversed.

**Transfers, postgraduate opportunities, internships:** explicit undergraduate needs. They disappeared from focused planning without rejection. Current but under-discovered.

**Community-contributed information:** an early trust/information category and later user-report flow survive. A broad community/Q&A product is not proven by that evidence.

**Rankings:** scattered architecture/domain mentions do not establish a user problem. The dedicated September addition is empty. Remains UNKNOWN.

## 15. Rejected ideas whose underlying discovery survives

- Rejected `Programme Offering` / Campus modelling: underlying contextual variation survived and later forced reversal.
- Deferred automated eligibility: the user need to understand requirements survives; only deterministic machine evaluation remains deferred.
- No-account core MVP: personalization may still be useful later, but the core information product remains usable without persistent identity.
- Global universal programme taxonomy: the need for cross-institution discovery survives; the mandatory global catalogue solution does not.
- Generic Organization/Education Authority abstractions: actors still need identity, but shared English nouns do not prove shared business semantics.


# Part IV — Current Canonical Product Discovery

## 16. Product purpose

**StudyNexus is a Nigeria-first education information and discovery product that helps learners and those advising them find, understand, compare and judge the trustworthiness of educational opportunities and related education information.** It connects fragmented authoritative/public evidence into structured knowledge while preserving source context, uncertainty, history and official handoff boundaries.

StudyNexus is **not primarily an enrolment, application, examination-operation, scholarship-award, government-service or transaction platform**. Across admissions, funding, examinations and service access, the recurring product stance is: **inform, explain, discover, compare, verify and hand off**.

## 17. Current problem space

The canonical problem space remains Fragmentation, Trust, Discoverability, Comparison and Accessibility. The September additions do not replace these problems; they extend the information categories and workflows through which the problems appear.

## 18. User groups

Current user groups remain:

1. secondary-school students and recent graduates;
2. undergraduate students;
3. parents/guardians;
4. guidance counsellors/teachers.

Institutions, education authorities, funding providers, publishers/service providers, researchers, employers and developers appear as actors/secondary users/future participants, but the corpus does not prove that all should be treated as one user group or one business entity.

## 19. Canonical product principles

1. **Preserve institutional reality before normalizing it.** The product must not rewrite source-faithful institution offering names merely to make classification convenient.
2. **Canonical truth is not source evidence.** Source evidence, candidate change, accepted canonical fact and derived representation are distinct states/responsibilities.
3. **MISSING ≠ DELETE.** Absence in a source is evidence to review, not an automatic destructive command.
4. **AI/extraction/user reports suggest; they do not silently authorize canonical mutation.**
5. **Search and discovery are different.** Known-target retrieval does not replace structured exploration.
6. **Classification must not become an ingestion gate.** Adopted for UL under explicit remediation assumption.
7. **Publication is selective.** Canonical existence, public visibility, search availability and SEO indexability are not the same decision.
8. **Official/local terminology matters.** Preserve jurisdiction- and authority-specific terms while modelling underlying meaning where justified.
9. **Context beats false universals.** Admission eligibility, funding eligibility, accreditation, status, source and publication may share words without sharing one universal model.
10. **External transactions remain external.** StudyNexus should provide authoritative handoff rather than impersonating institutions, regulators, exam bodies, scholarship providers or government services.
11. **Nigeria-first delivery does not justify Nigeria-hardcoded semantics where variability is already known.**
12. **Architecture does not create product evidence.** Laravel, JSONB, repositories, events, Typesense and folder structure are never proof that a capability is valuable.

## 20. Current capability map

Current scope is intentionally broader than the old first vertical slice. Capabilities with unresolved approval/minimums remain explicitly pending rather than silently excluded.

| Capability / concept | Historical discovery | Historical delivery | Current scope | Decision status | Confidence | Remediated assessment |
| --- | --- | --- | --- | --- | --- | --- |
| Comparison | Approved as one of five problem dimensions and core MVP capabilities; dedicated comparison view later deferred | Dedicated view historical Phase 2 | CURRENT / STRATEGIC_MVP | ADOPTED | HIGH | Capability is current; dedicated UI is not prerequisite to first slice. |
| Funding / Scholarships | Scholarships in early product; Sep03 approved broader FundingOpportunity discovery | Public faceted search historically Phase 2 | CURRENT / STRATEGIC_MVP | APPROVED | HIGH | Current scope. Minimum public experience should be specified separately from old sequencing. |
| Catchment / ELDS | Sep03 Approved Product Discovery Addition | No explicit old delivery placement | CURRENT | APPROVED | HIGH | Current admissions information scope; jurisdiction-specific semantics. |
| News | Sep03 Approved Product Discovery Addition | Content historically later than core slice | CURRENT | APPROVED | HIGH | Current product capability; does not own changed canonical facts. |
| Education Services & Access | Sep03 Approved Product Discovery Addition | No explicit historical roadmap placement | CURRENT | APPROVED | HIGH | Current capability family; breadth must be prioritized at capability-minimum level. |
| Examination information / schedules | Early exam information interest; Sep02 detailed proposal | Historically excluded from first programme-discovery slice | CURRENT_SCOPE_PENDING_DECISION | PROPOSED | MEDIUM | Current scope under consideration; proposed schedule model not yet canonical. |
| Exam practice / attempts / scoring / progress | Mentioned as future/distinct from timetable/reference information | Historically Phase 2+ / future | DEFERRED | PROPOSED/DEFERRED | MEDIUM | Keep separate from examination information until direct product discovery justifies it. |
| Evergreen content / guides / resources | Platform/content work repeatedly proposes guides/resources; News V2 explicitly distinguishes evergreen content | Historical Phase 1c/1e or Phase2 depending subtype | CURRENT_SCOPE_PENDING_CAPABILITY_MINIMUM | PROPOSED/PLATFORM-ADOPTED | MEDIUM | Current scope by remediation rule, but product outcomes/content taxonomy need revalidation. |
| Career pathways | Explicit primary-user information need | Later focused work largely silent | CURRENT_UNDERSPECIFIED | DISCOVERED_NEED | MEDIUM | No rejection found; current need, capability definition requires research. |
| Undergraduate current journey / WF7 | Explicitly resolved approved workflow | Omitted from first focused slice | CURRENT | ADOPTED | HIGH | Current workflow; first-slice omission is not supersession. |
| Transfers | Explicit undergraduate need and WF7 example | Underdeveloped later | CURRENT_UNDERSPECIFIED | DISCOVERED_NEED | MEDIUM | Current need; no explicit rejection. |
| Postgraduate opportunities | Explicit undergraduate need / pathways example | Underdeveloped later | CURRENT_UNDERSPECIFIED | DISCOVERED_NEED | MEDIUM | Current need; no explicit rejection. |
| Internships | Explicit undergraduate need | Underdeveloped later | CURRENT_UNDERSPECIFIED | DISCOVERED_NEED | MEDIUM | Current need; no explicit rejection. |
| Community/user-contributed information | Official/Verified/Historical/Community-Contributed trust category; user reports approved quality input | Full community/Q&A historically later/speculative | CURRENT_AS_INFORMATION_QUALITY_INPUT; FULL_SOCIAL_COMMUNITY_UNKNOWN | PARTIAL | HIGH/MEDIUM | Preserve evidence/report channel; do not infer a social network/community product. |
| Rankings / institutional intelligence | Scattered references; dedicated Sep ranking file empty | No reliable delivery commitment | UNKNOWN | UNRESOLVED | HIGH that evidence is insufficient | Do not promote architecture speculation into product scope without fresh problem discovery. |
| Public accounts | Explicitly not required for core MVP | Historically Phase 2 | EXCLUDED_FROM_STRATEGIC_MVP | ADOPTED EXCLUSION | HIGH | May become current later only if persistent user capability is approved. |
| Personalization | Historical Stage2 capability; depends on persistent identity/preferences | Later than core MVP | DEFERRED | ADOPTED FUTURE DIRECTION | HIGH | Not current MVP because account dependency is explicitly excluded. |
| Notifications | Historical Stage2 capability; depends on accounts/preferences | Later than core MVP | DEFERRED | ADOPTED FUTURE DIRECTION | HIGH | Not current MVP while account/persistence dependency remains excluded. |
| Institution/provider participation | Explicit Stage3 / MVP exclusion | Future Stage3 | EXCLUDED_FROM_STRATEGIC_MVP | ADOPTED EXCLUSION | HIGH | Current product may consume their evidence but does not require self-service. |
| Public APIs / third-party platform | Explicit Stage4 / MVP exclusion | Future Stage4 | EXCLUDED_FROM_STRATEGIC_MVP | ADOPTED EXCLUSION | HIGH | Not current MVP. |
| International public rollout | Explicit Nigeria-first/day-one exclusion | Future after Nigerian model matures | EXCLUDED_FROM_STRATEGIC_MVP_DELIVERY | ADOPTED EXCLUSION | HIGH | Do not launch multi-country now; international variability remains a current semantic stress test. |
| Internationalization semantics | Later approved additions reject Nigeria-hardcoding | Present semantic/design constraint | CURRENT | APPROVED PRINCIPLE | HIGH | Current semantics must preserve jurisdiction-specific terminology without speculative universalization. |
| Eligibility requirements/self-assessment | Approved workflow; users need requirements to assess themselves | Core workflow; exact automation later | CURRENT | ADOPTED | HIGH | Current product explains requirements and supports self-assessment. |
| Automated eligibility evaluation | Explicitly deferred until rules are reliable/machine-actionable | Historical Phase2+/future | DEFERRED | ADOPTED DEFERRED | HIGH | Do not turn generic eligibility engine into current requirement. |
| Programme / offering discovery classification | Sep18 proposed source-faithful offering + optional curated discovery concept | No historic delivery placement | CURRENT_SCOPE_PENDING_OWNER_RATIFICATION | RESOLVED_WITH_EXPLICIT_ASSUMPTION_FOR_UL | MEDIUM-HIGH | Use as UL input under explicit assumption; schema remains open. |

### Important interpretation

`CURRENT` does **not** mean “build every feature simultaneously.” It means the capability belongs to the product understanding now. Delivery still requires capability minimums, prioritization and vertical slices. Conversely, `HISTORICAL_PHASE_2` does not mean “not part of the product now.”

## 21. Negative knowledge — what the strategic MVP deliberately does not require

The following exclusions/deferments have evidence strong enough to override the current default-current rule:

- mandatory public accounts for core discovery;
- personalization/notifications while their persistent-identity dependency remains excluded;
- institution/provider self-service in strategic MVP;
- public developer/API platform in strategic MVP;
- multi-country public rollout in strategic MVP;
- operating scholarship application/selection/disbursement;
- operating exam registration/payment/booking/results/certification;
- operating government/visa/service-provider transactions;
- automated candidate eligibility evaluation before structured reliable rules/data exist;
- treating a missing source item as automatic deletion;
- allowing AI, extraction or user reports to silently mutate canonical facts;
- indiscriminately indexing every filter combination merely because a URL can be generated.

## 22. Evidence quality warning

The canonical product discovery is **stakeholder-evidence strong but customer-evidence weak**. Most high-level user problems are coherent and repeatedly adopted, but the corpus does not prove their relative frequency/severity through completed interviews or analytics. The next delivery/discovery cycle should validate outcome and prioritization assumptions without reopening settled negative knowledge unnecessarily.


# Part V — Business Concepts and Responsibilities

## 23. Concept classification

The following classification is deliberately pre-DDD. A concept can have more than one role, and `DOMAIN_CONCEPT_CANDIDATE` is not a bounded-context/module decision.

| Concept | Classification | Current meaning | Status | Confidence |
| --- | --- | --- | --- | --- |
| Institution | PRODUCT_CONCEPT; DOMAIN_CONCEPT_CANDIDATE | A recognized educational institution represented by StudyNexus. Identity is not equivalent to every related organization or campus. | Current | High |
| Institution Offering | PRODUCT_CONCEPT; BUSINESS_RESPONSIBILITY; DOMAIN_CONCEPT_CANDIDATE | The source-faithful fact that a specific institution offers a named course/programme under its own terminology; preferred UL term under explicit remediation assumption. | Current / assumption | Medium-high |
| Programme | PRODUCT_TERM (legacy/overloaded) | Historically meant an institution-specific course of study; later became a technical/domain template. Bare term is unsafe as a canonical cross-context noun. | Avoid as unqualified canonical term | High |
| ProgrammeInstance | DOMAIN/TECHNICAL CONCEPT (historical) | Historical child/model introduced to represent concrete campus/delivery/year variation. The underlying variation is real; the term need not survive into product UL. | Historical technical model; semantics retained | High |
| Discovery Programme | PRODUCT_CONCEPT; DERIVED/DISCOVERY CONCEPT | StudyNexus-curated concept used for standardized cross-institution discovery where useful; distinct from factual offering. | Current under explicit assumption | Medium-high |
| Classification | PRODUCT_CAPABILITY; BUSINESS_RULE CANDIDATE | Maps offerings to one or more discovery/external subject concepts where useful; classification must not determine whether the offering exists. | Current under assumption | Medium-high |
| Qualification | PRODUCT_CONCEPT; DOMAIN_CONCEPT_CANDIDATE | Credential/award context distinct from subject/programme family; terminology and recognition vary by authority/jurisdiction. | Current | High |
| Campus | PRODUCT_CONCEPT; DOMAIN_CONCEPT_CANDIDATE | A named institutional location/branch context where real offering/admission/accreditation facts may vary. Earlier rejection was reversed. | Current | High |
| Institution Relationship | PRODUCT/DOMAIN CONCEPT CANDIDATE | Explicit relationship such as affiliation, degree-granting relationship, historical relation or association; not generic parent ownership by default. | Current | High |
| Admission Policy | BUSINESS_RULE/DOMAIN_CONCEPT_CANDIDATE | Authoritative admission conditions applicable to an institution and/or concrete offering context for a period/cycle. | Current | High |
| Admission Requirement | BUSINESS_RULE/PRODUCT INFORMATION | Published requirement. It is not the same as a candidate-specific eligibility result. | Current | High |
| Eligibility | CONTEXTUAL PRODUCT/BUSINESS TERM | Means evaluation against rules in a context; admission and funding eligibility should not be assumed to be one universal rule system. | Current contextual term; automation deferred | High |
| Catchment | PRODUCT_CONCEPT; BUSINESS_RULE | Geographic admission-policy consideration; not proximity and not a permanent institution attribute. | Current | High |
| ELDS | JURISDICTION-SPECIFIC PRODUCT CONCEPT | Nigeria-specific admission classification; not a global universal. | Current Nigeria semantics | High |
| Accreditation | PRODUCT_CONCEPT; BUSINESS FACT/RULE | Authority quality/standards decision about a scoped institution or offering/programme, with type/status/effective period and provenance. | Current | High |
| Recognition | OVERLOADED TERM | Used for qualification recognition, recognized institutions/status and sometimes architecture grouping. One universal business meaning is not established. | Do not globally canonize yet | High |
| Education Authority / Regulator | ACTOR CONCEPT CANDIDATE | Authority with regulatory/accrediting/examining/coordinating roles and jurisdiction. Do not assume every provider/publisher is the same actor type. | Current | High |
| Funding Opportunity | PRODUCT_CONCEPT; DOMAIN_CONCEPT_CANDIDATE | Scholarship or related educational funding opportunity with criteria, benefits, dates, provider and handoff. | Current | High |
| Examination Product / Administration / Schedule Event | PRODUCT CONCEPT CANDIDATES | Proposed vocabulary separating exam identity from a particular administration/series and its scheduled events. | Current-scope pending decision | Medium |
| News | PRODUCT_CAPABILITY/CONTENT CONCEPT | Time-sensitive reporting/explanation of education changes. News does not become canonical owner of the fact reported. | Current | High |
| Evergreen Content / Guide / Resource | PRODUCT_CAPABILITY/CONTENT CONCEPT | Durable explanatory/learning information; exact content taxonomy and minimum current scope remain under-discovered. | Current-scope pending minimum | Medium |
| Education Service Point / Access | PRODUCT_CONCEPT/CAPABILITY | Where/how users complete external education-related tasks; StudyNexus guides and hands off rather than operates the service. | Current | High |
| Source | PRODUCT/TRUST CONCEPT + TECHNICAL REPRESENTATION | Origin of evidence. Source identity/authority/freshness matters, but technical source records/hashes are implementation details. | Current | High |
| Candidate Change | INFORMATION-QUALITY CONCEPT | A proposed structured change derived from evidence; not canonical truth. | Current | High |
| Canonical Fact | PRODUCT/TRUST CONCEPT | StudyNexus’s currently accepted representation of a business fact, controlled through evidence/review rules. | Current | High |
| Derived Representation | TECHNICAL/PRODUCT PRESENTATION CONCEPT | Search documents, landing-page views and read models derived from canonical/discovery state; not owners of canonical truth. | Current | High |
| Publication | CONTEXTUAL PRODUCT/APPLICATION TERM | May mean editorial publish, public visibility, search-index inclusion, SEO indexability or lifecycle status. These must not be globally unified. | Current contextual distinction | High |
| Search | PRODUCT_CAPABILITY + TECHNICAL IMPLEMENTATION | Known-target retrieval is a product capability; Typesense is one serving mechanism, not the product concept. | Current | High |
| Discovery | PRODUCT_CAPABILITY + BUSINESS RESPONSIBILITY | Exploration, structured filtering, curated concepts and meaningful combinations for users who do not know exact target. | Current | High |
| Organization | POTENTIAL SHARED ABSTRACTION | Many actors are organizations in ordinary English, but corpus does not prove shared business identity/lifecycle/rules. | Do not canonize universal business concept yet | High |
| Ranking / Institutional Intelligence | POTENTIAL PRODUCT CAPABILITY | Insufficient direct product evidence; dedicated ranking addition is empty. | Unknown | High that evidence is insufficient |

## 24. Programme / Offering remediation conclusion

This was the highest-priority blocker.

### Historical meanings

- **Early `Programme`:** “a specific course of study offered by an institution.” This is plain business/user language.
- **Later domain `Programme`:** an abstract institution-owned programme/template with stable identity.
- **`ProgrammeInstance`:** introduced after the earlier rejection was reversed, to carry concrete campus/delivery/year variation and later admission/cut-off scope.
- **`InstitutionOffering`:** Sep18 proposal returns to the factual question: *what does this specific institution actually say it offers?* It preserves the institution’s published terminology and associated contextual facts.
- **`DiscoveryProgramme`:** Sep18 product/discovery concept answering a different question: *what standardized concept should StudyNexus curate for cross-institution discovery?*

### Remediated business-language decision

**RESOLVED WITH EXPLICIT ASSUMPTION:** Use **Institution Offering** as the preferred business term for the source-faithful institution-specific offering. Use **Discovery Programme** for the separate StudyNexus-curated discovery concept. Do not use bare **Programme** as an unqualified canonical noun across contexts. Treat **ProgrammeInstance** as historical technical/domain language for real contextual variation, not as a required product term.

This assumption preserves the real discovery that led to ProgrammeInstance without importing the old tactical model into UL.

### Classification and cardinality

An Institution Offering may exist, be stored, displayed and searched without a Discovery Programme mapping. `NULL/unresolved classification` means **classification is not established**, not **the offering does not exist**. Many institutional offerings may map to one Discovery Programme. An offering may also participate in multiple *classification* mappings where a scheme legitimately permits interdisciplinary membership. That does **not** imply the institution is offering multiple separate programmes.

### Remaining non-blocking detail

Representative multi-campus/multi-mode data may justify an additional subordinate UL term such as **Offering Variant** or **Offering Context** if one source-faithful offering has multiple simultaneous campus/delivery manifestations with different fees/admissions. Product Discovery does not yet need to decide whether that becomes an entity, value, child record or merely contextual attributes.

## 25. Recognition / Accreditation remediation conclusion

The corpus proves a concrete need for users to understand legitimacy/quality signals. It does **not** prove one universal business concept named `Recognition`.

For UL:

- **Accreditation** — an authority’s quality/standards decision or status about a scoped institution or institution offering/programme, with authority, accreditation type/status and effective period/history.
- **Qualification Recognition** — whether/how a qualification is recognized by relevant authority/jurisdiction; different problem from programme accreditation.
- **Institution approval/recognized status** — whether an institution is legally/officially recognized/approved/operational within a jurisdiction; do not silently call this accreditation unless source terminology does.

The corpus itself evolved from Nigeria-specific “government agency” assumptions toward a broader **Education Authority** with jurisdiction. Official NUC evidence independently confirms both programme and institutional accreditation; NBTE confirms programme accreditation; COREN provides a professional-programme accreditation channel. These sources corroborate the distinction but do not justify a universal `Recognition` aggregate/module.

Open but non-blocking: exact campus/site scope for accreditation in every regulator/jurisdiction.

## 26. Business responsibility map

| Responsibility | Problem / decision responsibility | Authority | Actors / consumers | Key rules / lifecycle | Information | Dependencies | Evidence |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Maintain trusted institution identity and structure | Keep institution identity, names, campuses/branches and explicit relationships understandable and historically coherent. | Canonical institution facts | Learners, parents, counsellors, operations, other capabilities | Institution identity lifecycle; relationship validity; source-backed changes | Institution data; campus; relationships | Institution sources; geography; information quality | Strong |
| Maintain institution offerings | Represent what institutions actually say they offer while preserving official terminology and meaningful contextual variation. | Institution Offering facts | Discovery, admissions, comparison, public pages | Source-faithful name; qualification/context; availability; no classification prerequisite | Institution offerings | Institutions; admissions; accreditation; information quality | Strong |
| Curate discovery concepts | Create/maintain useful normalized concepts, classifications, facets and discovery combinations without rewriting source facts. | Discovery concepts/mappings | Search, SEO publication, compare, users | Classification optional; discovery demand-driven; source offering survives unresolved mapping | Discovery Programme; classification mappings | Institution offerings; geography; search/publication | Strong under explicit assumption |
| Explain admissions | Maintain policy/cycle/requirement/cutoff/geographic consideration information so users can understand entry routes and self-assess. | Admission facts/rules | Prospective students, parents, counsellors | Requirement ≠ eligibility result; context/time/jurisdiction matter | Policies, cycles, requirements, cutoffs, Catchment/ELDS | Offerings; exams; geography; sources | Strong |
| Maintain accreditation/regulatory evidence | Represent authority decisions/statuses that affect legitimacy/trust of institutions and offerings. | Accreditation facts | Users, comparison, trust, information quality | Authority, subject/scope, type/status, effective period and provenance matter | Accreditation; authority references | Institutions/offerings; information quality | Strong; universal Recognition not proven |
| Maintain funding opportunities | Explain funding opportunities, criteria, benefits, cycles/dates, restrictions and official handoff. | Funding opportunity facts | Students/parents; discovery/search | Eligibility ≠ selection; StudyNexus does not operate award process | Funding opportunities/criteria | Institutions/offerings/geography/sources | Strong |
| Maintain examination information | Explain exam identity/administration/schedules/changes and authoritative handoff. | Exam information if model ratified | Learners; admissions; news | Inform/direct, not registration/results/certification operations | Exam concepts | Authorities; admissions; content/news; sources | Medium; current-scope pending decision |
| Manage information quality and provenance | Acquire evidence, detect differences/conflicts, preserve lineage, review uncertain changes and protect canonical truth. | Evidence/candidate/review process | Operations; all canonical information; users indirectly | MISSING ≠ DELETE; AI/user reports not canonical; source evidence ≠ candidate ≠ canonical fact | Source/evidence/candidate/review/provenance | All factual responsibilities | Very strong |
| Publish news and explanatory content | Explain time-sensitive changes and durable educational topics while attributing sources and linking to canonical facts. | Editorial content | Users; SEO/discovery | News does not own business facts; corrections/retractions preserve history | News; guides/resources | Canonical facts; sources; publication/search | Strong for News; medium for evergreen minimum |
| Help users access external education services | Explain where/how to complete tasks and provide authoritative handoff. | Service-access information | Learners/parents | Information/guidance/handoff, not external transaction operation | Service points/access requirements | Actors; geography; sources | Strong |
| Search and present educational knowledge | Provide known-target retrieval and accessible public presentation from trusted structured information. | Serving/read representation only; canonical facts remain with owning responsibility | All users | Search infrastructure is derived/rebuildable; accessibility and provenance matter | Search queries/read models | All factual/discovery/content responsibilities | Strong |

## 27. Information ownership map

| Information | Canonical authority | Evidence authority | Derived/discovery owner | Presentation / boundary note |
| --- | --- | --- | --- | --- |
| Institution identity | Canonical education knowledge responsibility | Official/institution evidence + information-quality lineage | Discovery/search representation may summarize | Public composition consumes; does not redefine identity |
| Institution Offering | Canonical offering knowledge responsibility | Institution/source evidence; source-faithful names preserved | Optional Discovery Programme/classification mapping | Public institution/offering surfaces consume |
| Admission facts | Admissions information responsibility | Institution/JAMB/authority evidence | Discovery/search may expose/filter | Eligibility/self-assessment derives from requirements |
| Accreditation | Accreditation/regulatory information responsibility | Accrediting authority evidence | Trust/discovery/comparison consume | Public pages explain status/effective period/source |
| Funding Opportunity | Funding information responsibility | Provider/official evidence | Search/matching may derive | Application/selection remains external |
| Examination information | Pending ratified examination information responsibility | Exam authority evidence | Search/calendar/news consume | External registration/results/certification remain outside |
| Discovery Programme / classifications | StudyNexus curation responsibility | Offering names, user demand, external classifications, operator review | Feeds facets/search/SEO | Does not rewrite canonical offering name |
| News/editorial content | Editorial responsibility | Cited sources/author/editor history | Search/SEO representation derived | Does not own facts reported |
| Evidence/candidates/reviews | Information-quality responsibility | Raw captures/source references/operator decisions | May trigger approved canonical mutation | Never canonical owner merely because it discovered a change |
| Geography reference | Reference/context responsibility | Authoritative geographic sources | Used by discovery/policy/funding/services | Jurisdiction-specific names retained |
| Search documents | Derived serving representation | Canonical + discovery + publication inputs | Search infrastructure owns disposable index only | Rebuildable; not source of truth |

## 28. Information-quality lifecycle

The reconstructed trust lifecycle is:

```text
source evidence
    ↓
capture / extraction
    ↓
candidate structured information
    ↓
matching / comparison / conflict detection
    ↓
review / approve / reject / ignore / merge
    ↓
canonical business fact mutation by the responsible business area
    ↓
derived search/public/discovery representation
```

Important semantics:

- raw/source evidence may be immutable or replayable for technical/audit reasons, but immutability mechanics are not themselves the product requirement;
- evidence can contradict existing canonical state without automatically winning;
- candidate information is not canonical truth;
- human review is especially important for uncertainty/consequential changes;
- historical evidence must remain traceable enough to explain why a change happened;
- canonical history is contextual to the business concept, not one universal FactVersion product.

## 29. Contextual language that must not be globally unified

**Eligibility:** admission eligibility and funding eligibility share a word but different rules/decision authority.  
**Status:** institution lifecycle, offering availability, accreditation status, publication status, source reliability and review status are distinct.  
**Publication:** editorial publication, public visibility, search inclusion and SEO indexability are separate.  
**Source:** source identity, source reliability, source document/capture and provenance link are related but not interchangeable.  
**Organization:** ordinary-language umbrella, not yet one business identity model.  
**Programme:** overloaded historical term; qualify the context.  
**Recognition:** overloaded; use specific concrete terms until a broader business meaning is proven.


# Part VI — Current Scope & MVP

## 30. Strategic MVP vs current scope vs first vertical slice

The remediation uses three levels deliberately:

### Strategic MVP

The minimum **product capability envelope** StudyNexus needs to constitute the current trusted education knowledge/discovery proposition, subject to explicit exclusions and pending decisions. It is broader than one release slice.

At minimum it includes trusted institution/offering information, search/discovery, admissions information, comparison capability, provenance/information quality, accessible presentation, funding discovery, approved admission-geography semantics, and the approved News/Services capabilities at capability-minimum levels to be prioritized. Examination information/content are current-scope candidates where the product decision/minimum remains to be ratified.

### Current product scope

Everything presently considered part of StudyNexus unless evidence establishes rejection, explicit exclusion, dependency-based deferral, impossibility, irrelevance or unresolved lack of product evidence. This scope therefore includes under-discovered current needs such as careers, WF7, transfers, postgraduate opportunities and internships without pretending their detailed solutions are known.

### First vertical slice

A deliberately narrow implementation/learning path: programme/institution discovery → detail → admission/trust context. It tests architecture and user value; it does **not** define the entire current product scope.

### Capability-level minimums

Each current capability needs its own smallest useful version. Calling an examination timetable subset “MVP” means **minimum of that capability**, not automatically “StudyNexus strategic MVP.”

## 31. Explicit current exclusions / deferrals

Accounts, persistent personalization, notifications, organization self-service, public APIs, multi-country public rollout and automated eligibility evaluation remain outside strategic MVP for evidence-backed reasons. Practice/assessment attempts/scoring/progress remain distinct and deferred from basic examination information.

## 32. Current unresolved scope decisions

- whether the Sep02 examination schedule proposal is adopted as the minimum examination-information model;
- the minimum useful evergreen content/resource capability and licensing/source boundary;
- whether ranking/intelligence is a product capability at all;
- the minimum useful career/transfer/postgraduate/internship experiences;
- whether a broader social/community product is worth pursuing beyond user reports/evidence contributions.

These are not reasons to treat the whole Product Discovery as unready for UL.


# Part VII — Contradictions and Resolutions

| Topic | Earlier evidence | Later/competing evidence | Nature | Remediated resolution |
| --- | --- | --- | --- | --- |
| Programme semantics | Programme = institution-specific course offering | Programme = abstract aggregate/template + ProgrammeInstance | Changed abstraction and overloaded terminology | Resolve product language to Institution Offering; preserve contextual variation without carrying technical name into UL. |
| Programme Offering/Campus | Rejected as premature | Later audit: omission is blocker | True reversal | Underlying variation was real; earlier rejection was wrong. |
| Admission target | Policy/cutoff attached to Programme | Moved to ProgrammeInstance concrete context | Technical/domain correction after variation discovered | Product conclusion: admission facts apply to actual offering context; exact implementation owner remains later work. |
| Historical Phase 2 scope | Funding/comparison/exams/accounts/content deferred from first slice | Current remediation says phase labels are not current scope | Changed governing scope rule | Preserve old sequencing historically; reassess present product scope independently. |
| Examinations | Old first slice excludes examination/resource discovery | Sep02 proposes an examination timetable capability MVP | Different scope levels + unresolved approval | Exam information is current-scope candidate; schedule model remains proposed; practice is separate. |
| Programme classification | Earlier one Programme + discipline model | Sep18 optional InstitutionOffering→DiscoveryProgramme/classifications | Later proposed semantic correction | Adopt for UL under explicit assumption; do not freeze schema. |
| Recognition | Architecture later proposed Recognition grouping | Corpus uses accreditation, qualification recognition, institution status differently | Architecture abstraction vs product language | Do not canonize universal Recognition. |
| Community | Community-contributed information/user reports | Later architecture adds broad community/Q&A constructs | Need vs solution expansion | Keep contributed evidence/reporting current; full community product remains unproven. |
| Internationalization | Nigeria-only delivery | Later additions demand non-Nigeria-hardcoded semantics | Scope vs semantic extensibility | Not a contradiction: Nigeria-first delivery, jurisdiction-aware semantics. |
| Search fallback | V4.6 PostgreSQL degraded fallback | V4.7 removes public fallback | Technical supersession | Retain only as technical history; search capability itself unchanged. |

## 33. Blocker resolution summary


| ID | Question | Classification | Current conclusion | Confidence | Remaining assumption |
| --- | --- | --- | --- | --- | --- |
| R001 | How should Programme, ProgrammeInstance, InstitutionOffering and DiscoveryProgramme be reconciled? | RESOLVED WITH EXPLICIT ASSUMPTION | Use Institution Offering as preferred business term; use Discovery Programme for StudyNexus-curated concept. Keep Offering Variant/Context as an unresolved subordinate concept only if representative data proves one offering needs multiple campus/delivery manifestations. | MEDIUM-HIGH | Owner ratification of Sep18 semantic correction; representative multi-campus/multi-mode examples |
| R002 | Is discovery classification mandatory? | RESOLVED WITH EXPLICIT ASSUMPTION | An Institution Offering can exist, be searchable and public without a Discovery Programme mapping. Classification is optional and may be added later. | MEDIUM-HIGH | Owner ratification |
| R003 | What is Recognition vs Accreditation? | RESOLVED | Use specific UL terms: Accreditation, Qualification Recognition, Institution Approval/Recognized Status. Do not introduce generic Recognition until a shared business rule/workflow is discovered. | HIGH | Campus/location-specific accreditation scope remains non-blocking |
| R004 | Do historical Phase 2/3 labels determine current scope? | RESOLVED | Use current-scope reassessment artifact; old roadmap remains history only. | HIGH | None |
| R005 | Does WF7 remain current? | RESOLVED | WF7 remains current product responsibility. | HIGH | Direct user validation still needed |
| R006 | Do career pathways remain current? | NON-BLOCKING OPEN QUESTION | Treat as current information need; research decision moments, authoritative data, and minimum useful experience. | MEDIUM | User research |
| R007 | Do transfers/postgraduate/internships remain current? | NON-BLOCKING OPEN QUESTION | Keep current needs; perform capability-specific discovery before detailed rules/UL beyond obvious terms. | MEDIUM | User/source research |
| R008 | Is a full community product current? | RESOLVED | User reports/contributed evidence are current inputs; full community/Q&A remains UNKNOWN until direct discovery. | HIGH | Research social/community demand if considered |
| R009 | Is rankings/institutional intelligence a current product capability? | NON-BLOCKING OPEN QUESTION | Keep UNKNOWN; research whether users need imported rankings, StudyNexus metrics, or only comparison/trust signals. | HIGH | Fresh product discovery |
| R010 | Is examination information current and what is canonical? | NON-BLOCKING OPEN QUESTION | Keep examination information current-scope candidate; ratify/revise schedule semantics before UL terms beyond obvious authority/product/administration/event. Practice/assessment stays separate/deferred. | MEDIUM | Owner decision on Sep02 proposal |
| R011 | Are evergreen content/resources current? | NON-BLOCKING OPEN QUESTION | Keep evergreen content current scope; validate user outcomes, source/licensing constraints, and minimum content families. | MEDIUM | User/content strategy research |
| R012 | Are accounts/personalization/notifications current MVP? | RESOLVED | Accounts, personalization, and notifications remain outside strategic MVP; can be revisited when persistent user value is approved. | HIGH | New owner decision with validated persistent-job evidence |
| R013 | Are institution/provider self-service and public APIs current MVP? | RESOLVED | Not strategic MVP. | HIGH | Owner reversal |
| R014 | How should internationalization be treated? | RESOLVED | Multi-country rollout excluded from strategic MVP; jurisdiction-aware semantics are current. | HIGH | New-country commitment |
| R015 | What is the current eligibility boundary? | RESOLVED | Current product explains requirements/criteria and may support user self-assessment; deterministic automation remains deferred and context-specific. | HIGH | Reliable structured rules + candidate data |
| R016 | Should all actors be one Organization concept? | RESOLVED | Do not canonicalize universal Organization in Product Discovery; UL should name concrete actor roles and revisit shared identity only if a cross-role business workflow emerges. | HIGH | Cross-role identity/relationship requirements |
| R017 | How should search, discovery and SEO relate? | RESOLVED | Keep four layers distinct: search capability, discovery semantics, publication/indexability, serving infrastructure. | HIGH | Exact landing-page publication criteria remain non-blocking |
| R018 | What are category-specific source authority hierarchies? | NON-BLOCKING OPEN QUESTION | Define source-authority rules by information category during UL/domain policy work; preserve conflicting evidence in the meantime. | HIGH | Source-by-source research |
| R019 | Which user-facing trust signals are canonical? | NON-BLOCKING OPEN QUESTION | Canonicalize the information users need (source, freshness, conflict/history where material), not the exact UI treatment. | HIGH | Usability/user research |
| R020 | Is Product Discovery ready to begin Ubiquitous Language? | RESOLVED | Proceed to UL with Institution Offering / Discovery Programme assumption flagged for owner ratification; preserve ranking, examination-detail, content-minimum, and source-hierarchy questions as non-blocking. | MEDIUM-HIGH | Owner rejection of programme terminology would reopen one blocker |

No issue is classified as a `TRUE MVP BLOCKER` after this pass. This does not mean uncertainty disappeared. It means remaining uncertainty does not prevent the **next phase—Ubiquitous Language—from starting** if the explicit programme/offerings assumption is carried visibly rather than silently.


# Part VIII — Research / Evidence Gaps

| ID | Question / research need | Current evidence | Evidence needed | Required confidence | Decision affected |
| --- | --- | --- | --- | --- | --- |
| Q-R01 | Validate severity/frequency of the five core problems with real users | Stakeholder-defined business discovery, little completed primary research | Direct interviews/usability/behavioral data with secondary students, undergraduates, parents, counsellors | High | Product prioritization and outcome metrics |
| Q-R02 | Career pathways capability minimum | Explicit user need; little later discovery | Interviews + authoritative career/qualification sources + decision-journey mapping | Medium-high | Whether career pathways is structured data, editorial guidance, or both |
| Q-R03 | Transfers/postgraduate/internships opportunity model | Explicit undergraduate needs, underdeveloped | User interviews + representative institution/source examples | Medium | Capability vocabulary and current MVP minimums |
| Q-R04 | Rankings/intelligence user problem | Dedicated ranking file empty; architecture references only | User research + identify actual source/ranking use cases | High before any product commitment | Whether capability exists at all |
| Q-R05 | Examination schedule model ratification | Detailed Sep02 proposal, not approved | Owner review + representative JAMB/WAEC/NECO/SAT/IELTS schedule samples | Medium-high | Canonical examination vocabulary |
| Q-R06 | Evergreen content minimum | Architecture rich, product evidence thinner | Search/user-intent analysis; content strategy; licensing/source constraints | Medium | Guides/resources scope |
| Q-R07 | Source authority rules by information category | Strong provenance need, no universal hierarchy | Authority/source analysis for institutions, admissions, funding, exams, accreditation | High | Conflict resolution policy |
| Q-R08 | User-facing trust presentation | Need strong; exact badges/staleness warnings are hypotheses | Usability tests and comprehension studies | Medium | UX, not canonical trust semantics |
| Q-R09 | Offering variant examples | ProgrammeInstance need real; InstitutionOffering assumption needs representative data | Sample institutions with multi-campus, multiple modes, different admission/fees across same named offering | High enough for UL refinement, not blocking start | Whether UL needs an Offering Variant/Offering Context term |
| Q-R10 | Accreditation campus/site scope and jurisdiction-specific recognition terminology | Corpus resolves institution/programme/professional scope but not every location-specific case | Official NUC/NBTE/NCCE/professional-body rules + later country exemplars | Medium | Detailed accreditation vocabulary |

The research backlog is intentionally smaller than the previous open-question list. Questions that could be resolved from the corpus have been resolved; questions that concern UI treatment, prioritization or future capability detail remain open but non-blocking.


# Part IX — Architecture-Relevant Signals

This section is a handoff to later DDD work. It is **not** a module map.

## 34. Major responsibility clusters

- institution identity/structure/relationships;
- institution offering facts and contextual variation;
- admissions policies/requirements/cycles/cut-offs/geographic considerations;
- authority accreditation/regulatory facts;
- funding opportunities and criteria;
- examination information (pending model ratification);
- discovery curation/classification/facets/selective combinations;
- information quality/provenance/reconciliation;
- news/editorial content;
- education service/access information;
- search/presentation/read composition.

## 35. Strong ownership signals

- one accepted canonical business fact should have one authoritative business responsibility even when many product surfaces consume it;
- information quality owns evidence/candidate/review history, not the canonical institution/offering/admission/accreditation fact merely because it discovered a change;
- Discovery Programme/classification may derive/curate semantics but must not overwrite source-faithful Institution Offering identity;
- News reports a changed fact but does not become the canonical owner of the fact;
- search indexes are derived and rebuildable; search infrastructure is not canonical business ownership.

## 36. Strong contextual-vocabulary differences

- Institution Offering vs Discovery Programme;
- Admission Requirement vs Eligibility Result;
- Admission Eligibility vs Funding Eligibility;
- Accreditation vs Qualification Recognition vs Institution Approval/Status;
- canonical fact vs source evidence vs candidate change vs derived representation;
- known-target Search vs exploratory Discovery vs SEO Publication;
- News/announcement vs the canonical business fact reported.

## 37. Major lifecycles

- institution identity/name/status/relationship history;
- offering availability/context and possible withdrawal/change;
- admission cycle/policy/requirement/cutoff history;
- accreditation decision/effective-period history;
- funding opportunity cycles/calls/deadlines;
- exam administrations and schedule revisions/cancellations if adopted;
- news publication/update/correction/retraction;
- source capture/candidate/review/resolution;
- discovery concept/classification evolution;
- publication/indexability decisions.

## 38. High-coupling risks for later DDD

- allowing `Programme` to remain a universal noun will merge factual offering identity, discovery grouping and concrete contextual variation;
- a generic `Organization` could merge actors that have no shared business rules;
- a generic `Recognition` could merge accreditation, qualification recognition and institution approval;
- a generic `Eligibility` engine could force admissions and funding into false shared semantics;
- a generic `Publication` state could conflate business lifecycle, public visibility, editorial status, search inclusion and SEO indexability;
- letting Information Quality write canonical facts directly would collapse evidence and authority;
- letting SEO/search schemas define business concepts would invert product discovery into infrastructure design.

## 39. Potential bounded-context signals — analytical only

Distinct language, authority, lifecycle and rules are visible around institution/offering facts, admissions, accreditation, funding, discovery curation, information quality and editorial/news work. These are **signals**, not a prescribed bounded-context list. The next phases must still test cohesion, coupling, workflows and ownership before physical boundaries are chosen.

## 40. Concepts requiring further evidence before architecture

- whether an explicit Offering Variant/Context business term is needed;
- the exact examination information vocabulary after proposal ratification;
- content taxonomy/minimum;
- ranking/intelligence purpose;
- source-authority policies by information category;
- accreditation location/site scope;
- whether any shared actor identity is genuinely useful beyond technical account/access-control concerns.


# Part X — Self-Critique

## 41. What is strongly established

- the five foundational product problems;
- Nigeria-first trusted education information/discovery identity;
- the four primary user groups as stakeholder-defined groups;
- search/discovery/comparison/trust/accessibility as core needs;
- provenance/information-quality importance;
- `MISSING ≠ DELETE` and non-silent AI/user-report mutation;
- external transaction/handoff boundary across several capabilities;
- the need to preserve institution-specific offering terminology and contextual variation;
- admissions requirement/eligibility distinction;
- Catchment/ELDS policy-context semantics;
- funding eligibility/selection distinction;
- News not owning the facts it reports;
- historical first-slice scope is not the same as present product scope.

## 42. What is stakeholder-defined but not empirically validated

- relative priority of primary personas;
- severity/frequency of each core problem;
- programme discovery as the best first learning loop;
- how much users understand or value particular trust badges/source metadata;
- whether SEO is the dominant acquisition channel;
- exact priority among current capabilities.

## 43. What remains ambiguous

- representative offering-variant semantics beyond the preferred Institution Offering term;
- exact exam schedule vocabulary until proposal ratification;
- career/transfer/postgraduate/internship minimums;
- evergreen content minimum and licensing/source policy;
- rankings/intelligence product need;
- category-specific source authority precedence;
- some accreditation site/location details.

## 44. What was corrected in this remediation

- semantic-coverage accounting is now explicit at the 186-byte-unique-document level;
- the claim ledger no longer treats multiple source paths as one path;
- status dimensions are separated;
- near-duplicate method is reproducible;
- historical Phase 2 no longer silently means current exclusion;
- WF7/careers/transfers/postgraduate/internships are no longer treated as disappeared/unknown merely because the first slice omitted them;
- community-contributed information is separated from a broad social-community product;
- Programme/Offering terminology is sufficiently reconciled to begin UL under an explicit assumption;
- generic Recognition is rejected as premature product vocabulary, while Accreditation is retained as a concrete concept;
- rankings remain UNKNOWN instead of being inferred from architecture.

## 45. What should not yet become a decision

- final DDD bounded contexts;
- physical LBC module names/count;
- aggregate roots;
- database tables/cardinalities merely because a conceptual relationship exists;
- a universal Organization abstraction;
- a universal Recognition abstraction;
- a universal Eligibility engine;
- exact publication-state machine;
- exact ranking model;
- every proposed Sep18 SEO/classification threshold;
- every Sep02 examination model detail.

## 46. Adversarial quality-gate result

**Coverage:** all 555 files inventoried; all 186 byte-unique documents dispositioned.  
**Evidence:** claims now identify major evidence rather than pretending exhaustive sentence extraction.  
**Authority:** current authority, historical state, current scope and delivery are separated.  
**History:** Programme Offering/Campus reversal and other supersessions are preserved.  
**Scope:** old Phase labels are historical, not automatic current exclusions.  
**Concepts:** Programme, Eligibility, Organization, Status, Publication, Source and Recognition are explicitly protected against false global unification.  
**Product discipline:** technical stack/folder/package choices are not used to prove user needs.  
**Blockers:** every high-impact blocker in the remediation protocol was pursued; none remains a true blocker to starting UL.


# Part XI — Readiness for Ubiquitous Language

## 47. Readiness verdict

**YES — the remediated Product Discovery is sufficient to begin StudyNexus Ubiquitous Language work.**

That verdict is narrower than “the product is fully specified.” Product Discovery will continue. The point is that the evidence base is now coherent enough to establish shared language without importing historical architecture as truth.

## 48. Vocabulary conditions carried into UL

### Must be explicit from the first UL draft

- **Institution Offering** — preferred source-faithful business term under explicit remediation assumption;
- **Discovery Programme** — distinct StudyNexus-curated discovery term under the same assumption;
- **Programme** — never used unqualified where it could mean either of the above;
- **Accreditation** — concrete authority decision/status term;
- **Recognition** — not one universal term; qualify as Qualification Recognition, Institution Approval/Recognized Status, etc.;
- **Admission Requirement** vs **Eligibility Result**;
- **Funding Eligibility** vs **Admission Eligibility**;
- **Source Evidence** vs **Candidate Change** vs **Canonical Fact** vs **Derived Representation**;
- **Search** vs **Discovery** vs **Publication/Indexability**;
- **News** vs canonical fact.

### Non-blocking vocabulary questions

- whether `Offering Variant` / `Offering Context` is necessary after representative multi-campus/multi-mode examples;
- exact exam `Administration/Series/Session/Sitting` terms;
- exact career/transfer/postgraduate/internship capability vocabulary;
- content-family taxonomy;
- source-authority terms/precedence by information category;
- accreditation site/location terminology.

### No true UL blocker remains

The prior Programme blocker is classified **RESOLVED WITH EXPLICIT ASSUMPTION**, not silently “solved.” If the owner rejects the Sep18 semantic correction, that single issue must be reopened before UL is frozen. It does not prevent beginning the UL exercise because the assumption is visible, scoped and reversible.

## 49. Next phase boundary

The next work should be:

```text
Remediated Product Discovery
        ↓
Ubiquitous Language
        ↓
Strategic DDD
        ↓
Bounded-context / responsibility analysis
        ↓
LBC module-boundary analysis
        ↓
Architecture
```

Do **not** derive Laravel folders, repositories, migrations or a module count directly from this document.

---

# Companion artifacts

1. `StudyNexus-Corpus-Inventory.csv` — 555-file inventory with exact-duplicate, near-duplicate, semantic-disposition and examination linkage.
2. `StudyNexus-Claim-Evidence-Ledger.csv` — 85 major claims represented as 88 claim-source rows with separated status dimensions.
3. `StudyNexus-Historical-Decision-Ledger.csv` — 23 normalized decision records with date ranges and separate historical/current/delivery effects.
4. `StudyNexus-Near-Duplicate-Clusters.csv` — reproducible TF-IDF/cosine near-duplicate analysis; no semantic equivalence inferred.
5. `StudyNexus-Unique-Document-Disposition.csv` — 186/186 byte-unique documents explicitly dispositioned after examination.
6. `StudyNexus-Current-Scope-Reassessment.csv` — current-scope decision separated from historical roadmap placement.
7. `StudyNexus-Product-Discovery-Resolution-Ledger.csv` — 20 important blockers/open questions with evidence, reasoning and one of the mandated resolution classifications.

# Final stopping-condition assessment

The remediation stopping conditions are met:

- corpus accounting is internally consistent;
- semantic coverage is explicitly accounted for at the byte-unique-document level;
- major claims and major decisions are traceable;
- contradictions and reversals are preserved;
- disappeared discoveries were reassessed;
- present scope was reassessed independently from old roadmaps;
- high-impact blockers were actively pursued rather than merely listed;
- remaining uncertainty is genuine and visible;
- Product Discovery is separated from tactical DDD/architecture;
- the evidence base is stable enough to begin Ubiquitous Language.

The reconstruction should therefore now be treated as the **remediated evidence foundation**, not as a frozen final specification of the product forever.
