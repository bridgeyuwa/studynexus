# StudyNexus — Master Product Discovery Reconstruction

**Reconstruction date:** 2026-09-21  
**Corpus boundary:** `studynexus discovery corpus.tar` supplied for this reconstruction  
**Purpose:** Recover the product discovery that exists across the historical corpus before any new ubiquitous-language, DDD, LBC-module, architecture, or implementation decision is made.

> **Core rule used throughout:** historical authority and evidentiary value are separate dimensions. A superseded file can preserve an important discovery; a current file can still contain an assumption.

## Executive Reconstruction

StudyNexus began as a Nigeria-first attempt to replace fragmented, difficult-to-verify education research with a connected and trustworthy education knowledge product. The earliest frozen business discovery consistently identifies five problems: fragmentation, trust, discoverability, comparison, and accessibility. The user journey is decision-oriented: find possibilities, understand them, compare them, determine whether they may fit, judge information reliability, and make an education decision. The product deliberately stops before operating most external transactions such as enrolment, exam registration, scholarship selection, visa processing, or appointment booking.

The corpus then evolved in three important directions. First, the information model became more precise: a simple `Programme` concept proved insufficient when campus, delivery, cycle, admission-policy, and source-faithful naming differences appeared. Second, trust moved from a general product promise into an explicit information-quality process involving sources, provenance, captures, candidate changes, reconciliation, human approval, and the rule `MISSING ≠ DELETE`. Third, discovery became more than keyword search: later work separates institutional terminology from StudyNexus-controlled discovery concepts and supports selective publication of meaningful search/SEO surfaces rather than blindly indexing every filter combination.

The corpus also exposes an important weakness: it is rich in stakeholder decisions, AI-assisted analysis, architecture, and adversarial review, but contains no documented completed customer-interview programme, survey study, or usability study. The UX documents themselves explicitly identify critical questions that still require real user research. Therefore this reconstruction treats many user/problem statements as **approved stakeholder discovery with medium evidentiary confidence**, not as experimentally validated market facts.

A second important distinction is scope. “MVP” is used for at least three different things in the corpus: the strategic Stage-1 Trusted Education Knowledge Base; the smaller first vertical slice centered on programme discovery; and, in a later proposed examination document, the minimum viable surface of that individual capability. These are not equivalent. This reconstruction uses **Strategic MVP**, **First Vertical Slice**, and **Capability-Minimum** as separate labels.

---

# Part I — Corpus Archaeology

## 1. Method

The general product-discovery foundation is Teresa Torres’s Continuous Discovery / Opportunity Solution Tree model: start from a desired outcome, discover customer opportunities (needs, pain points, desires), explore solutions, and test their risky assumptions. Product Talk describes the four Opportunity Solution Tree levels as desired outcome, opportunity space, solution space, and assumption tests, and emphasizes direct, recurring customer contact as a defining requirement of continuous discovery.

StudyNexus requires an archaeology extension because the material already exists as a long historical corpus rather than as a clean contemporary discovery stream. The working graph used here is:

```text
Evidence
  ↓
Finding / Observation
  ↓
Problem / Insight
  ↓
Opportunity
  ↓
Hypothesis
  ↓
Proposal / Solution
  ↓
Experiment or Decision
  ↓
Requirement / Constraint
  ↓
Product Capability
```

Every node can additionally carry `supersedes`, `rejects`, `contradicts`, `renames`, `depends_on`, and `derived_from` relationships. Decision authority, evidentiary relevance, historical status, current validity, and confidence are recorded separately.

**Methodological sources:** Product Talk, *Opportunity Solution Trees: Visualize Your Discovery to Stay Aligned and Drive Outcomes*; Product Talk glossary entries for *Product Discovery*, *Continuous Discovery*, and *Opportunity Solution Tree*. These sources establish the discovery framework; they do not override StudyNexus-specific product decisions.

## 2. Corpus coverage

| Metric | Result |
| --- | --- |
| Total files discovered | 555 |
| Total directories | 87 including root; 79 contain files |
| Maximum nesting depth | 3 directories below corpus root |
| File types | 555 Markdown (`.md`) |
| Empty files | 1 (`Ranking - Product Discovery Additions 03-09-2026.md`) |
| Unreadable files | 0 |
| Byte-unique documents | 186 |
| Exact duplicate groups | 83 |
| Files participating in duplicate groups | 452 |
| Duplicate copies beyond one representative per hash | 369 |
| Probable near-duplicate clusters | 19 heuristic clusters involving 50 byte-unique files |
| Source files carrying substantive/mixed product/domain/governance evidence | 387 when duplicate copies are counted |
| Byte-unique representatives included in substantive synthesis | 107 conservative evidence-bearing representatives |
| Files primarily architecture/implementation/metadata or duplicate-only | 447 plus 1 empty; retained in inventory and consulted when relevant to chronology/constraints |
| Per-file inclusion/exclusion accounting | `StudyNexus-Corpus-Inventory.csv` records every path, hash, class, duplicate relationship, inclusion flag and exclusion reason |
| Near-duplicate evidence | `StudyNexus-Near-Duplicate-Clusters.csv` records heuristic candidate pairs/clusters; clusters were not treated as proof of semantic identity |

### Coverage caveat: V4.7 package incompleteness

The corpus contains `studynexus-v4.7-remediation-package/studynexus-v4.7/README.md`, whose own contents say the remediation package had 16 deliverables. In this supplied TAR, only that README is present under the V4.7 package path. Its claims about decision ledgers/contracts are therefore usable as a summary of what the V4.7 author reported, but the underlying 16-deliverable evidence cannot be independently re-audited from this corpus. This is a concrete corpus gap and reduces confidence for V4.7-only details.

## 3. Files by directory

The complete per-file inventory is in the companion CSV. The following table accounts for every directory containing files:

| Directory | Files |
| --- | --- |
| . | 11 |
| STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2 | 5 |
| STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION | 1 |
| STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive | 31 |
| STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical | 6 |
| STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/governance | 10 |
| STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/product-experience | 4 |
| StudyNexus-Independent-Audit-Package-v3 | 2 |
| StudyNexus-Independent-Audit-Package-v3/00-ORIENTATION | 4 |
| StudyNexus-Independent-Audit-Package-v3/01-CANONICAL | 7 |
| StudyNexus-Independent-Audit-Package-v3/02-PRODUCT-EXPERIENCE | 4 |
| StudyNexus-Independent-Audit-Package-v3/03-IMPLEMENTATION | 6 |
| StudyNexus-Independent-Audit-Package-v3/04-GOVERNANCE | 18 |
| StudyNexus-Independent-Audit-Package-v3/05-PRODUCT-STRATEGY | 1 |
| StudyNexus-Independent-Audit-Package-v3/06-DATA-ACQUISITION | 1 |
| StudyNexus-Independent-Audit-Package-v3/07-HISTORICAL | 32 |
| StudyNexus-Independent-Audit-Package-v3/08-INDEPENDENT-AUDIT-GUIDE | 2 |
| StudyNexus-Independent-Audit-Package-v4 | 2 |
| StudyNexus-Independent-Audit-Package-v4/00-ORIENTATION | 4 |
| StudyNexus-Independent-Audit-Package-v4/01-CANONICAL | 7 |
| StudyNexus-Independent-Audit-Package-v4/02-PRODUCT-EXPERIENCE | 4 |
| StudyNexus-Independent-Audit-Package-v4/03-IMPLEMENTATION | 8 |
| StudyNexus-Independent-Audit-Package-v4/04-GOVERNANCE | 17 |
| StudyNexus-Independent-Audit-Package-v4/05-PRODUCT-STRATEGY | 3 |
| StudyNexus-Independent-Audit-Package-v4/06-DATA-ACQUISITION | 2 |
| StudyNexus-Independent-Audit-Package-v4/07-HISTORICAL | 15 |
| StudyNexus-Independent-Audit-Package-v4/08-INDEPENDENT-AUDIT-GUIDE | 2 |
| StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE | 2 |
| StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/archive | 31 |
| StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical | 6 |
| StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/governance | 2 |
| StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/product-experience | 3 |
| StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2 | 5 |
| StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION | 1 |
| StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/archive | 31 |
| StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/canonical | 6 |
| StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/governance | 10 |
| StudyNexus-V4.2-Developer-Handoff v2/PRE-IMPLEMENTATION-BASELINE-V2/product-experience | 4 |
| StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2 | 5 |
| StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION | 1 |
| StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive | 31 |
| StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical | 6 |
| StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance | 10 |
| StudyNexus-V4.3-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience | 4 |
| StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2 | 5 |
| StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION | 1 |
| StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive | 31 |
| StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical | 6 |
| StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance | 10 |
| StudyNexus-V4.4-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience | 4 |
| StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2 | 5 |
| StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION | 1 |
| StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive | 31 |
| StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical | 6 |
| StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance | 10 |
| StudyNexus-V4.5-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience | 4 |
| StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2 | 5 |
| StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/00-ORIENTATION | 1 |
| StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive | 31 |
| StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical | 6 |
| StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance | 10 |
| StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience | 4 |
| studynexus-v4.7-remediation-package/studynexus-v4.7 | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/01-finding-ledger | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/02-decision-ledger | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/03-contract-registry | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/04-change-manifest | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/05-contract-diff | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/06-scenario-tests | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/07-final-audit | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/08-unresolved-issues | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/09-external-evidence | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/10-archive-contamination | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/11-implementation-determinism | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/12-changed-file-inventory | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/13-contract-propagation | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/14-decision-graph | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/15-regression-verification | 1 |
| studynexus-v4.7-remediation-package/studynexus-v4.7/16-remediated-package | 1 |

## 4. Duplicate handling

Exact duplicates were detected by SHA-256. They were **accounted for but not repeatedly synthesized**: one representative supplied the text while every copy remains listed in the inventory. This avoids both double-counting repeated claims and the opposite error of ignoring the fact that a claim propagated across successive handoff packages. Propagation itself is evidence of historical persistence, but not independent corroboration.

Near-duplicates were generated algorithmically with a high textual-similarity threshold. They were treated only as review candidates because an apparently small editorial change can encode a meaningful decision reversal. In particular, V4.x copies often look almost identical while changing search-engine scope, ProgrammeInstance semantics, publication rules, or trust boundaries.

## 5. Chronological strata

| Period | Stratum | What changed | How used here |
| --- | --- | --- | --- |
| 2026-08-07 to 08-08 | Business discovery / freeze | Identity, users, five problems, strategic evolution, capabilities, canonical workflows, open-question resolutions. | Foundational product discovery; mostly stakeholder-defined, not empirically validated. |
| 2026-08-07 onward | Early domain discovery / resolution | Programme, Institution, Admission, Scholarship, provenance and candidate domain models; several concepts accepted/rejected. | Historical model exploration; high value for terminology evolution, lower authority for current product model. |
| 2026-08-10 | Product-experience discovery / first-slice work | Search-first public experience, programme journey, mobile/SEO/trust hypotheses, implementation-readiness triage. | Product-design hypotheses; later closure approves parts but document itself openly records research unknowns. |
| 2026-08-18 to 08-19 | Independent audit and V4.2–V4.6 remediation | ProgrammeInstance/Campus reintroduced, admissions scoping refined, acquisition trust boundary tightened, canonical docs realigned. | Important reversals showing that frozen decisions were not necessarily correct. |
| 2026-08-26 | V4.7 remediation summary | No public PostgreSQL fallback, new projection/trust/atomicity contracts, overall NO-GO due unresolved implementation contracts. | Mostly technical/architecture evidence; only README present in supplied TAR. |
| 2026-09-02 | Exam timetable addition + JSONB principle | Examination scheduling product model proposed; relational-vs-JSONB technical principle. | Timetable is proposed, not approved; JSONB is technical. |
| 2026-09-03 | Approved product-discovery additions | Catchment/ELDS, Funding/Scholarships, News/Post-UTME, Education Services & Access. | Current approved discovery semantics; implementation-roadmap placement is often unspecified. |
| 2026-09-18 | Global programme discovery/classification proposal | InstitutionOffering, DiscoveryProgramme, optional classification, selective landing pages. | Strong problem/scale reasoning but explicitly proposed; not reconciled with Programme/ProgrammeInstance baseline. |

## 6. Evidence-quality model

| Evidence class | Interpretation in reconstruction |
| --- | --- |
| Direct observed user evidence | Highest for user/problem claims. **Very little/no completed evidence of this kind is present in the corpus.** |
| Stakeholder definition / owner decision | High decision authority, but not automatically proof of user demand or behavior. |
| Repeated discovery across independent reasoning stages | Raises confidence when the repetition is not merely copied text. |
| Approved Product Discovery Addition | High current semantic authority; delivery priority remains separate unless explicitly changed. |
| Adversarial/audit finding | Strong for detecting inconsistency or missing modeling; may still be architecture-centric. |
| Proposed discovery/model | Useful hypothesis; never promoted to current truth without ratification/evidence. |
| Implementation/architecture statement | Used for constraints and historical consequences, not as a substitute for product need. |
| Copied/frozen/canonical label alone | No independent evidentiary weight beyond propagation/authority metadata. |

---

# Part II — Discovery Reconstruction

## 7. Product problem reconstruction

The earliest business discovery presents one coherent problem family. These problems recur through later product experience and September additions, although the corpus does not show primary research validating their magnitude.

| Problem | Reconstructed need | Evidence status | Product implication — not architecture |
| --- | --- | --- | --- |
| Fragmentation | Users should not have to manually assemble one decision from many disconnected official and unofficial sources. | Frozen stakeholder discovery; repeated | Create a connected knowledge experience spanning relevant facts and sources. |
| Trust | Users need to know whether information is authoritative, current, verified, historical, conflicting, or uncertain. | Frozen stakeholder discovery; strongly reinforced by later quality work | Expose sources/freshness/uncertainty and prevent uncertain observations becoming silent truth. |
| Discoverability | Users need to find options they do not already know by exact name. | Frozen stakeholder discovery; later search/classification work reinforces | Support structured exploration, categories/facets and curated discovery concepts. |
| Comparison | Users need comparable views despite heterogeneous institutional terminology and data structures. | Frozen stakeholder discovery | Normalize comparable dimensions without destroying source-faithful terminology. |
| Accessibility | Information must be practically usable on mobile/poor connectivity and not buried in inaccessible formats. | Frozen stakeholder discovery; UX elaboration | Present information clearly, efficiently, semantically and accessibly. |
| Decision uncertainty | Users need enough trustworthy information to decide what to pursue and what to do next. | Derived from canonical workflows | Organize information around decisions, not merely records. |
| Data-quality uncertainty | StudyNexus itself faces conflicting, stale, incomplete and disappearing source information. | Strong technical/product evidence | Treat information quality as a product/business process, not just ETL. |
| Semantic heterogeneity | Institutions/countries name programmes, qualifications, geographic areas and policies differently. | Strong later discovery | Preserve source terminology while providing optional discovery normalization. |

## 8. Users, jobs, decision moments and evidence limits

| User group | Evidence-backed jobs / information needs | Decision moments | Confidence |
| --- | --- | --- | --- |
| Secondary school student / recent graduate | Discover institutions/programmes; understand admission requirements, cutoffs, tuition, scholarships and career pathways; assess reliability. | What can I study? Where? Can I get in? Can I afford it? Is this information trustworthy? | Medium-high decision authority; low direct research validation. |
| Undergraduate student | Accurate current institution/programme info; scholarships, transfers, postgraduate opportunities, internships; current academic journey information. | Continue/progress/transfer? Find funding? Prepare next stage? | Medium; later product work underdevelops this journey. |
| Parent / guardian | Compare institutions, costs, perceived quality/legitimacy and admission requirements on behalf of learner. | Which option is credible, affordable and realistic? | Medium; stakeholder-defined. |
| Guidance counsellor / teacher | Use reliable structured information to advise multiple learners. | What options/requirements should I recommend? | Medium-low usage evidence; strategically recognized. |
| Institution / provider / authority actors | Initially sources/represented entities rather than core users; possible future self-service roles. | Is our information represented accurately? | Current as ecosystem actors; self-service deferred. |
| Researchers / analysts | Structured data and historical comparison. | What patterns/trends exist? | Secondary/future; limited product detail. |

**No fictional personas are added.** The corpus uses persona labels, but the reconstruction treats them as stakeholder-defined user groups. The Product Experience Architecture explicitly lists “Unknowns Requiring Real User Research,” including result-card priorities, status comprehension, and location-filter granularity. No later completed research study was found in the TAR.

## 9. Jobs-to-be-done / canonical workflow reconstruction

| Workflow/job | Meaning | Current assessment |
| --- | --- | --- |
| Explore | Discover possibilities without already knowing exact targets. | Foundational and current. |
| Evaluate | Understand one opportunity deeply enough for a decision. | Foundational and current. |
| Compare | Compare alternatives on decision-relevant dimensions. | Strategic MVP capability; dedicated comparison UI was Phase 2 in first slice. |
| Assess eligibility / requirements | Understand published requirements; later possibly evaluate structured rules. | Requirements current; automated evaluation deferred. |
| Assess information reliability | Judge source, freshness, verification, conflicts and historical status. | Core differentiator/current. |
| Make an educational decision | Choose to pursue, reject, postpone or research further. | Workflow endpoint; application transaction remains outside core product. |
| Understand current educational journey | Undergraduate-specific academic status/calendar/fees/policies/progression. | Historical approved need that later disappeared from focused discovery; unresolved. |

## 10. Outcomes reconstruction

| Outcome type | Reconstructed outcomes |
| --- | --- |
| User outcomes | Spend less effort gathering fragmented information; find relevant options; understand requirements/cost/timing; compare alternatives; judge trustworthiness; make a more informed education decision. |
| Product outcomes | Become the place where education information is connected, structured, discoverable, comparable and source-aware; provide meaningful public discovery surfaces; hand users to authoritative external action channels when transactions are external. |
| Business outcomes | Build a trusted education knowledge asset in Nigeria first; later support personalization, verified ecosystem participation and education-data infrastructure. Exact monetization is deliberately deferred. |
| System outcomes | Maintain canonical knowledge separately from source observations; make search projections rebuildable; preserve provenance/history; prevent uncertain acquisition from silently corrupting canonical data. |
| Technical outcomes — not product outcomes | Laravel, PostgreSQL, Typesense, Redis, Livewire, Filament, modular-monolith/LBC organization. These are constraints/implementation choices rather than user outcomes. |

## 11. Opportunity map

Using the Opportunity Solution Tree vocabulary, the corpus can be reconstructed without pretending that every branch is empirically validated:

```text
Desired outcome
  Learners can make informed education decisions from trustworthy, usable information

Opportunity space
  ├─ Reduce fragmentation
  ├─ Increase trust and freshness visibility
  ├─ Reveal relevant options users do not know by name
  ├─ Make heterogeneous opportunities comparable
  ├─ Make authoritative information practically accessible
  ├─ Explain admission and geographic-policy applicability
  ├─ Explain funding opportunities and requirements
  ├─ Explain examination schedules and changes
  └─ Help users find external education services/access points

Solution/hypothesis space documented historically
  ├─ Structured institution/programme/funding/exam information
  ├─ Source/provenance + information-quality workflow
  ├─ Search + facets + curated discovery concepts
  ├─ Comparison surfaces
  ├─ SEO landing/detail pages
  ├─ InstitutionOffering ↔ DiscoveryProgramme (proposed)
  ├─ Anonymous/self-assessment first; structured eligibility later
  └─ Authoritative handoff instead of owning external transactions
```

The corpus has many solution decisions but few assumption tests. That imbalance is a research debt, not a reason to discard the accumulated product knowledge.

## 12. Product capability map

| Capability | Type | Problem solved | Status | Evidence |
| --- | --- | --- | --- | --- |
| Maintain trusted educational knowledge | Product capability | Acquire/organize/verify/maintain source-backed information. | Strategic MVP | Strong |
| Institution discovery | Product capability | Find and understand recognized education institutions and their structure/location. | First Vertical Slice | Strong |
| Programme/offering discovery | Product capability | Find what institutions offer while preserving exact institutional terminology and enabling normalized discovery. | First Vertical Slice + model evolution unresolved | Strong need; model partly unresolved |
| Admission information | Product capability | Explain cycles, requirements, cutoffs, routes, policies, screening and geographic policy. | First Vertical Slice / current | Strong |
| Funding discovery | Product capability | Find/understand funding opportunities, criteria, benefits, dates and official application routes. | Approved current discovery; public experience Phase 2 | Strong |
| Examination information | Product capability | Explain exam products/administrations/schedule events, changes and official channels. | Proposed / Phase 2+ | Medium |
| Search | Product capability | Locate known information efficiently. | First Vertical Slice | Strong |
| Structured discovery | Product capability | Explore without knowing exact names; use facets/taxonomies/classification. | Strategic MVP / First Slice | Strong |
| Compare | Product capability | Compare alternatives on standardized decision dimensions. | Strategic MVP; dedicated view Phase 2 | Strong |
| Information quality / provenance | Product capability | Preserve evidence, conflicts, freshness, review, source history and safe canonicalization. | Strategic MVP foundation | Very strong |
| Editorial content | Product capability | Explain durable topics with guides/resources/pages. | Phase 2+ | Medium |
| News / updates | Product capability | Report time-sensitive changes without becoming fact owner. | Approved discovery; delivery timing unclear | Strong semantics, unclear priority |
| Education services & access | Product capability | Find where/how to perform education-related external tasks and hand off authoritatively. | Approved discovery; roadmap unknown | Strong semantics, unvalidated priority |
| Personalization/alerts/saves | Product capability | Persist preferences and notify users. | Future / deferred | Strong scope decision, weak demand validation |
| Verified organization participation | Product capability | Allow providers/institutions to maintain information under governance. | Future | Strategic concept |
| Third-party data/API | Product capability | Expose trusted data/services externally. | Long-term future | Vision-level |
| Ranking/intelligence | Potential capability | Rank/compare using imported or calculated metrics. | Unknown/exploratory | Insufficient evidence |

## 13. Programme / offering terminology archaeology

| Stage | Term/model | Meaning at that time | What happened | Current assessment |
| --- | --- | --- | --- | --- |
| Early business discovery | Programme | A specific course of study offered by an institution. | User-facing/business term directly tied to institution offering. | Important historical meaning; later overloaded. |
| Early domain discovery | Programme aggregate | Promoted into a first-class domain entity/aggregate. | Became more abstract than original glossary usage. | Model decision, not necessarily product discovery. |
| Integrity review | Programme Offering / Programme Instance | Possible missing concept for per-cycle/location/tuition/admission variation. | Initially rejected/deferred as premature complexity. | Rejection was later falsified. |
| Audit/remediation | ProgrammeInstance + Campus | Concrete child of Programme for campus/delivery/year; admission/cutoff later scoped here. | Added as blocker resolution. | Underlying need for concrete offering context is strong. |
| 2026-09-18 proposal | InstitutionOffering | Source-faithful institution-specific offering; exact institutional name/facts. | Proposed as factual source of truth for what institution says it offers. | Strong candidate concept; not ratified in corpus. |
| 2026-09-18 proposal | DiscoveryProgramme | StudyNexus-curated discovery concept used only when useful; classification optional. | Proposed to avoid global master-catalogue bottleneck. | Strong candidate discovery model; relationship to Programme/ProgrammeInstance unresolved. |

### Current unresolved model question

The corpus does **not** establish whether `InstitutionOffering` replaces `ProgrammeInstance`, wraps/reframes it, or coexists with `Programme`/`ProgrammeInstance`. It also does not ratify `DiscoveryProgramme`. This is one of the few open questions capable of materially changing the next Ubiquitous Language and DDD phase. It should be decided from business semantics and representative real data before implementation migrations are treated as final.

## 14. Trust, information quality, acquisition and provenance reconstruction

The trust model did not originate from ingestion architecture. It originates in the user problem: users cannot tell whether information is accurate, current or authoritative. That problem generated the business capabilities **Verify Educational Information**, **Preserve Information Provenance**, and **Manage Information Quality**. Later acquisition architecture operationalized those needs.

| Stage | Responsibility / state | Authority | What must be preserved |
| --- | --- | --- | --- |
| Source acquisition | Capture official/public evidence without treating it as truth. | External source is evidence, not StudyNexus canonical authority. | Source identity, fetch/capture context, raw content or durable reference, hash/metadata where required. |
| Extraction/normalization | Transform source format into candidate structured information. | Automated extraction may assist but is not authoritative. | Mapping/extraction lineage and source-faithful values. |
| Candidate/reconciliation | Compare candidate information to canonical state and detect NEW/UPDATED/UNCHANGED/MISSING/CONFLICT/INVALID. | Reconciliation identifies differences; it does not grant canonical truth. | Candidate values, comparison result, conflicts, previous/current context. |
| Review/approval | Human/operator resolves uncertain or consequential change. | Human/business rules authorize canonical mutation. | Decision, reviewer, rationale/audit history where consequential. |
| Canonical mutation | Owning business information is updated only after accepted change. | Canonical product state. | Current valid fact plus contextual history required by the concept. |
| Projection/publication | Search/public read representations update from canonical state. | Derived representation is not canonical owner. | Rebuildability and publication state. |

### Durable trust principles recovered

- `MISSING ≠ DELETE`: source absence is ambiguous evidence, not an automatic destructive instruction.
- Source authority and provenance must remain inspectable enough to explain why information is trusted.
- User reports and AI/extraction suggestions can create quality candidates but cannot directly mutate canonical truth.
- News/reporting does not acquire ownership of the underlying fact merely by reporting a change.
- Historical state is contextual: cutoffs, policy periods, scholarship cycles, exam schedules, source captures and news corrections have different histories. The corpus does not justify a single universal `FactVersion` product concept.

## 15. Admissions reconstruction

| Concept | Recovered meaning | Status |
| --- | --- | --- |
| Admission cycle | Temporal admissions context. | Current |
| Admission phase | Sub-period/stage within admissions where useful. | Current concept, implementation detail varies |
| Admission policy | Authoritative rules/conditions applying at institution and/or concrete offering context. | Current |
| Admission requirement | Published requirement; not identical to a candidate’s evaluated eligibility. | Current |
| Cut-off mark | Cycle/pathway/context-specific threshold, with historical cross-cycle value useful to users. | Current |
| Catchment | Geographic consideration under an admission policy; not physical proximity or permanent institution property. | Approved current discovery |
| ELDS | Nigeria/jurisdiction-specific geographic admission classification; not universal concept. | Approved current discovery |
| Institutional screening / Post-UTME | Nigeria-specific admission screening/assessment with eligibility, dates, fees, results/admission-list relationships. | Approved current discovery |
| Candidate eligibility | Result of applying requirements to candidate facts; distinct from the requirement itself. | Deferred automation |
| Candidate profile | Personal facts needed for automated assessment/personalization. | Deferred; core MVP avoids account/profile dependency |

The core boundary repeatedly recovered is **explain policy and requirements now; automate candidate evaluation only when the rules and candidate data are reliable enough**. Catchment/ELDS adds geographic policy without turning geography into automatic eligibility or guaranteeing admission.

## 16. Funding reconstruction

The September approved discovery broadens the older `Scholarship` view into a more general funding opportunity model. Real funding opportunities can have cycles/calls, optional tracks, multiple provider roles, multi-part benefits, monetary/non-monetary components, eligibility criteria, selection information, application routes, milestones, destination/institution/programme restrictions and historical cycles. The user problem is to understand **what it is, who it is for, what it provides, when/how to apply, and how trustworthy/current the information is**.

Two distinctions are strong: **eligibility is not selection**, and **StudyNexus handoff is not provider-side application/award management**. Future matching may say an opportunity may fit a user with confidence/qualification rather than pretending to make an award decision.

Roadmap status remains separate: the August first-slice closure placed full public scholarship landing/detail/faceted-search pages in Phase 2. The September document approves the product semantics but does not explicitly amend that delivery sequence.

## 17. Examination reconstruction

Examination information appears in early business scope and was later deferred from the first vertical slice. The September 2 document is explicitly **Proposed Product Discovery Addition**, not approved. It introduces a concise scheduling model: examination authority → examination product → administration/series/session → schedule events, including revisions, cancellation/postponement, candidate applicability, location/timezone, source conflicts and historical schedules.

Its “Resulting MVP Scope” is best interpreted as the minimum viable **examination-scheduling capability**, not a decision to move examination discovery into the overall StudyNexus MVP, because the approved first-slice closure still places examination/resource discovery in Phase 2+ and no explicit later roadmap reversal is present.

Practice questions, attempts, scoring and learner progress solve a different product problem from timetable/reference information and remain future. No physical boundary is prescribed here.

## 18. Content and news reconstruction

Historical content work includes guides, educational resources, pages and exam-preparation material. The approved September News/Post-UTME addition sharpens the content problem: evergreen content teaches/explains durable topics; News communicates time-sensitive change. News can cite official announcements, original reporting and multiple sources, can be corrected/retracted/superseded, and can link to canonical entities. It must never convert a reported claim into canonical truth simply by publication.

Post-UTME is a key semantic correction: it should be represented as Nigeria-specific institutional admission screening/assessment and may generate news when dates/fees/results change, but “Post-UTME news” is not the owner of the admission-screening fact.

Public comments, Q&A, personalized news, newsletters and notifications are not established MVP commitments. They remain future/deferred ideas.

## 19. Geography reconstruction

Geography serves several different jobs: institution/campus location, discovery filtering, admission-policy applicability, funding restrictions/destinations, service-point directions, and potentially SEO geography. Later approved discovery explicitly warns against treating Nigeria’s `State`/LGA system as a universal model. The product needs stable country/administrative-area semantics while preserving jurisdiction-specific official terminology.

There is no corpus evidence of an independent user job called “manage geography.” Geography is a reference/contextual concept used by multiple responsibilities. This conclusion is an input to future design, not a module decision.

## 20. Organization / actor reconstruction

| Actor/context | Observed role | Does corpus prove one universal Organization model? |
| --- | --- | --- |
| Educational institution | Canonical educational entity; provider of programmes and admission information. | No. |
| Regulator/accreditation authority | Source/authority for recognition/accreditation. | No. |
| Exam authority/body | Authority/provider for examination products and schedules. | No. |
| Scholarship/funding provider/sponsor/admin/awarder | Multiple roles around one opportunity. | No; September funding explicitly allows multiple roles. |
| Publisher/source organization | Produces content/evidence/news source. | No. |
| Government/service provider | Operates education-related service locations. | No. |
| People/operators/authors | Perform review/editorial/administrative actions. | No. |

The corpus increasingly needs reusable actor references, but that is not enough to prove a single global business concept with one lifecycle and rule set. A universal `Organization` remains an open modelling question for the later ubiquitous-language/DDD phase.

## 21. Education Services & Access reconstruction

This approved September discovery adds a distinct user problem: “I need to do X; where and how can I do it?” Examples include CBT/registration/testing centres, credential evaluation/authentication, admissions/support offices, visa/biometric locations, authority offices and study-mobility services. The model is service/task-oriented: provider/operator + location/access point + capability/service + authorization/applicability.

The deliberate boundary is consistent with the broader StudyNexus product: provide information, discovery, guidance, directions and an authoritative handoff; do not process government applications, registrations, appointments, visas, credential decisions or external inventory. The discovery is approved, but its placement in MVP/near-term/future roadmap is not explicitly resolved.

## 22. Rankings / institutional intelligence reconstruction

The dedicated `Ranking - Product Discovery Additions 03-09-2026.md` file is empty. **No substantive evidence is available from that file.** Older corpus material contains scattered ideas such as institution ranking/tier and potential analytics, but there is no approved, coherent model distinguishing imported rankings, normalization, StudyNexus-computed metrics, methodology, or first-party rankings. Ranking/intelligence therefore remains **UNKNOWN / EXPLORATORY** and must not be invented from architecture preferences.

## 23. Search reconstruction

Search exists at three levels that the historical corpus sometimes blends:

| Level | Meaning | Current reconstruction |
| --- | --- | --- |
| Product capability | Locate known educational information efficiently. | Foundational MVP capability. |
| Discovery semantics | Facets, classifications, related concepts, normalized terminology, selective combinations. | Business/product semantics that support discoverability. |
| Infrastructure | Typesense indexing/querying, projection events, outage behavior, collection rebuilds. | Technical mechanism, not product concept. |

Historically, V4.6 made PostgreSQL canonical, Typesense the V1 serving engine for public list/search, and PostgreSQL the detail source, while allowing PostgreSQL FTS for admin/degraded fallback. The V4.7 README later says the public fallback must be eliminated and an outage should not silently masquerade as zero results. Because the detailed V4.7 deliverables are absent, only the README-level reversal is internally verifiable.

The strongest enduring constraint is rebuildability: search documents are derived from canonical data, not a competing truth store.

## 24. SEO and publication reconstruction

SEO enters the corpus because a large portion of education discovery can occur through public search engines, but SEO is not itself the user problem. Product-relevant semantics include canonical public entity pages, crawlable server-rendered content, canonical URLs, structured data, sitemap inclusion, and selective indexability. The corpus consistently warns against uncontrolled generation of thin/deep faceted pages.

The September 18 proposal gives the clearest product articulation: a possible programme × geography combination should not automatically become an indexable page; StudyNexus should selectively publish meaningful discovery landing pages. Because that document is proposed, the exact canonical landing-page model remains open, but **selective publication over indiscriminate indexation** is well supported by earlier SEO work as well.

Publication, indexability, routing and search execution are separate concerns in the product model. A fact may exist canonically yet be unpublished or noindex; a public page may exist without being a curated discovery landing page.

## 25. Product experience reconstruction

The approved first vertical slice is:

```text
Home / programme-search entry
  → programme search + facets
  → programme detail
       admissions
       cutoffs/history
       tuition/fees
       accreditation
       provenance/trust
       related scholarships inline
  → institution detail
       profile
       programme list
       accreditation
       contact
```

This was explicitly designed to test the programme-discovery → admission-information value loop. It is an implementation/product-learning slice, not the complete product-discovery map. Dedicated comparison, eligibility evaluation, scholarship public pages, content models, user accounts, community, notifications, examination/resource discovery, study abroad, institution self-service and public API were placed in Phase 2+ at closure.

The UX artifacts include many reasonable hypotheses—mobile filters, result-card information, trust warnings, state filters—but explicitly admit several lack direct evidence. They should not be canonized as user facts.

## 26. Current vs future vs deferred scope reconstruction

| Area | Discovery status | Delivery status | Notes |
| --- | --- | --- | --- |
| Core identity / five problems | CURRENT | Strategic foundation | Approved/frozen business discovery. |
| Nigeria-only public scope | MVP/CURRENT | Current market scope | International future; semantics need not be Nigeria-hardcoded. |
| Programme/institution search + detail + admission information + trust | MVP | First Vertical Slice | Strongest implementation learning loop. |
| Acquisition/provenance/information quality | MVP foundation | Required to support trust | Specific ingestion mechanics evolved. |
| Comparison as user/job capability | MVP strategic | Dedicated comparison view DEFERRED | Distinguish capability from UI feature. |
| Automated eligibility | DEFERRED | Phase 2+ / future | Requirements/self-assessment precede automation. |
| Scholarship/funding semantics | CURRENT approved discovery | Public pages/search DEFERRED Phase 2 | Sep03 did not explicitly change roadmap. |
| Catchment/ELDS semantics | CURRENT approved discovery | Delivery timing UNKNOWN | Admission-policy enrichment. |
| News/Post-UTME semantics | CURRENT approved discovery | Delivery timing UNKNOWN / content originally Phase2 | News does not own facts. |
| Education Services & Access | CURRENT approved discovery | Delivery timing UNKNOWN | New approved capability family. |
| Examination timetable model | EXPLORATORY/PROPOSED | Overall examination discovery remains Phase 2+ | “Capability MVP” wording is not overall product MVP. |
| Programme classification / DiscoveryProgramme | EXPLORATORY/PROPOSED | Needs ratification before canonical model | Strong rationale; old model not reconciled. |
| User accounts/saves/favourites | DEFERRED | Phase 2+ | No account core MVP. |
| Notifications/personalization | FUTURE/DEFERRED | Stage2 | Requires identity/preferences. |
| Institution/provider self-service | FUTURE | Stage3 | Explicit MVP non-goal. |
| Public APIs / third-party platform | FUTURE | Stage4 | Explicit MVP non-goal. |
| Multi-country public product | FUTURE | After Nigeria model matures | Do not confuse extensible semantics with current scope. |
| Rankings/intelligence | UNKNOWN | No substantive Sep ranking discovery | Requires new discovery/research. |
| Career pathways | UNKNOWN / unresolved disappearance | Original user need, later underdeveloped | Requires rediscovery. |
| Undergraduate current-journey surface | UNKNOWN / unresolved disappearance | Approved WF7, later underdeveloped | Requires rediscovery. |

## 27. Historical decision ledger

| ID | Date | Problem | Decision | Current status | Evidence source |
| --- | --- | --- | --- | --- | --- |
| D001 | 2026-08-07/08 | Define product identity | Trusted education knowledge platform; search/discover/compare/verify | CURRENT | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| D002 | 2026-08-08 | Sequence primary users | Secondary student/graduate > undergraduate > parent > counsellor | CURRENT ASSUMPTION | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| D003 | 2026-08-08 | Need accounts? | No account for core MVP | CURRENT MVP | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| D004 | 2026-08-08 | Should system determine eligibility? | Start self-assessment, progress to structured evaluation | DEFERRED AUTOMATION | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| D005 | 2026-08-08 | Day-one countries | Nigeria only initially | CURRENT SCOPE | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| D006 | 2026-08-07 | Programme Offering/Campus | Rejected/deferred | REVERSED | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/18-domain-resolution-analysis.md |
| D007 | 2026-08-18 | Programme instance/campus variation | Add ProgrammeInstance + Campus | CURRENT BUT SEMANTICS OPEN | StudyNexus-Independent-Audit-Package-v4/03-IMPLEMENTATION/STUDYNEXUS-CANONICAL-REMEDIATION-REPORT.md |
| D008 | 2026-08-19 | Where policies/cutoffs apply | Move to ProgrammeInstance with institution fallback | CURRENT DISCOVERY SIGNAL | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/V4.2-REMEDIATION-REPORT.md |
| D009 | 2026-08-10/19 | How much scholarship UX | Public pages Phase2; entity/admin + inline relation in slice | CURRENT UNTIL REVISED | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md |
| D010 | 2026-08-10/19 | Search/detail data sources | Typesense list/search; PostgreSQL detail/canonical | CURRENT TECHNICAL | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md |
| D011 | 2026-08-26 | Postgres public fallback | Eliminate PostgreSQL public fallback | CURRENT TECHNICAL, MEDIUM TRACEABILITY | studynexus-v4.7-remediation-package/studynexus-v4.7/README.md |
| D012 | 2026-08-19 | Where extraction/reconciliation operates | External acquisition with no production credentials; approved handoff | CURRENT PRINCIPLE | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md |
| D013 | 2026-08-19 | How to treat absence | MISSING ≠ DELETE | CURRENT HARD PRINCIPLE | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md |
| D014 | 2026-09-03 | Catchment/ELDS model | Policy-context geography; ELDS jurisdiction-specific | CURRENT DISCOVERY | Catchments-ELDS-Additions-03-09-2026.md |
| D015 | 2026-09-03 | Scholarship-only vs broader funding | Broaden to FundingOpportunity and provider handoff | CURRENT DISCOVERY; ROADMAP DEFERRED | Scholarships - Product Discovery Additions 03-09-2026.md |
| D016 | 2026-09-03 | What owns changed facts | Underlying canonical domain owns fact; News reports/explains | CURRENT DISCOVERY | News Post-UTME - Product Discovery Additions V2 03-09-2026.md |
| D017 | 2026-09-03 | Classification | Treat as institutional admission screening/assessment | CURRENT DISCOVERY | News Post-UTME - Product Discovery Additions V2 03-09-2026.md |
| D018 | 2026-09-03 | Directory vs task-oriented discovery | Model user task/service access and authoritative handoff | CURRENT DISCOVERY | Education Services & Access - Product Discovery Additions 03-09-2026.md |
| D019 | 2026-09-02 | Minimum exam info model | Proposed authority→product→administration→schedule events | PROPOSED | Proposed Product Discovery Addition 02-09-2026.md |
| D020 | 2026-09-18 | Global programme naming/classification | Propose InstitutionOffering + optional DiscoveryProgramme classification | PROPOSED | STUDYNEXUS_PROGRAMME_DISCOVERY_CLASSIFICATION-18th-Sept-2026.md |

The full machine-readable ledger is provided as `StudyNexus-Historical-Decision-Ledger.csv`.

## 28. Contradiction ledger

| Topic | Claim A | Claim B | Nature | Current assessment |
| --- | --- | --- | --- | --- |
| Programme meaning | Early business glossary: programme is institution-specific course offering. | Later domain: Programme becomes abstract aggregate; ProgrammeInstance represents concrete variant. | Changed abstraction + terminology overload. | Do not assume one universal meaning; reconcile before UL/DDD. |
| Campus / Programme Offering | Early domain resolution rejects them as premature. | Aug18 audit says omission is a BLOCKER and adds both. | True decision reversal. | Underlying variation discovery survives; earlier rejection was wrong. |
| AdmissionPolicy target | Initially Programme/Institution. | V4.2 moves programme-level policies/cutoffs to ProgrammeInstance/Institution. | Model correction after instance discovery. | Policy applies to the actual admission context, not blindly to abstract programme. |
| Search fallback | V4.6 allows PostgreSQL FTS degraded/admin fallback. | V4.7 README mandates no PostgreSQL public-search fallback. | Technical supersession. | Public fallback removed per later decision; detailed V4.7 evidence unavailable. |
| MVP meaning | Stage1 is broad trusted knowledge base with 10 capabilities. | First vertical slice is much narrower programme-discovery loop; timetable proposal also calls its subset MVP. | Different abstraction levels, not necessarily contradiction. | Use Strategic MVP / First Vertical Slice / Capability-Minimum labels. |
| Scholarship scope | Original MVP capability discussions include scholarships as opportunity type/entity. | Closure defers public scholarship pages/search to Phase2; Sep03 approves richer funding discovery. | Capability vs delivery scope change. | Funding semantics current; public rollout remains deferred absent explicit roadmap revision. |
| Examination scope | Early product universe includes exam information; first slice defers exam/resource discovery. | Sep02 proposes timetable model and calls resulting subset MVP. | Scope terminology ambiguity. | Proposed future capability; not overall MVP. |
| Global programme classification | Earlier canonical uses Programme + Discipline; classification is one discipline per programme. | Sep18 proposes optional InstitutionOffering→DiscoveryProgramme mapping and rejects mandatory global catalogue. | Later proposed conceptual refinement. | Open; requires decision. |
| Information truth categories | Early business uses Official/Verified/Historical/Community-Contributed. | Later technical source reliability/status models use different enums. | Different abstraction levels. | Keep trust semantics separate from technical status enum. |
| Publication | Historical architecture experimented with richer publication semantics. | Closure approves boolean `is_published` + timestamp for MVP. | Implementation simplification, not product erasure. | Canonical product needs visibility/indexability distinction; tactical state model remains implementation choice. |
| External acquisition | Early discovery says acquire public sources and considers how. | Later V4.6 imposes hard external trust boundary/no production credentials. | Architecture consequence added after discovery. | Keep product need and trust principle separate from deployment mechanism. |
| Internationalization | MVP strictly Nigeria-only. | Sep approved additions say Nigeria-first but not Nigeria-hardcoded. | Scope vs semantic extensibility, not contradiction. | Nigeria-only delivery can use country-neutral semantics where warranted. |

## 29. Superseded / rejected / reconsideration ledger

| Idea | Why it was rejected/deferred | Later evidence | Assessment |
| --- | --- | --- | --- |
| Programme Offering / Campus rejection | Rejected as premature/insufficient independent behavior. | Later evidence showed campus/delivery/year variation and admission differences. | **Wrongly rejected; later reversed.** Lesson: simplicity should not erase observed variation. |
| No-account core MVP | Accounts withheld until persistence/personalization justifies them. | Reason still holds; no later evidence requires accounts for core discovery. | Retain. |
| Automated eligibility now | Deferred until requirements/rules are reliable. | No later evidence eliminates rule complexity. | Retain deferral. |
| Institution/provider self-service in MVP | Explicitly excluded. | Later ecosystem vision still treats participation as future. | Retain deferral. |
| Multi-country public launch | Explicitly excluded from day-one. | Later international extensibility refines semantics, not launch scope. | Retain Nigeria-first scope. |
| Full scholarship public experience in first slice | Deferred to Phase2 because not needed to test programme-discovery loop. | Sep approved scholarship semantics, but no explicit roadmap reversal. | Retain Phase2 placement until decided otherwise. |
| PostgreSQL public-search fallback | Allowed in V4.6. | V4.7 summary says explicitly eliminate. | Superseded technical decision. |
| Global mandatory programme catalogue | Sep18 argues against it. | No earlier explicit owner decision requiring one; prior models can be misread that way. | **Not yet a ratified rejection.** Treat as proposed correction needing decision. |
| Community product | Later architecture explored community/questions/answers. | Early need is mainly information-quality reports; first slice defers community. | Potential architecture-driven expansion; keep future/exploratory. |
| Generic universal fact/version system | Historical architecture considered generalized patterns. | Actual temporal needs differ by cutoff/policy/accreditation/news/funding/source. | Do not elevate to product requirement; contextual history is the discovery. |

## 30. Unresolved disappearances

| Idea/need | First/early evidence | Later state | Assessment |
| --- | --- | --- | --- |
| Career pathways | Secondary student need in early business overview. | Little/no substantive dedicated later discovery. | May have been forgotten or deprioritized; no explicit rejection found. |
| Undergraduate current educational journey (WF7) | Approved workflow/open-question resolution. | Not represented in focused first-slice product work. | Still-valid approved need unless roadmap explicitly removed it. |
| Transfers / postgraduate / internships | Undergraduate user needs. | Minimal later detail. | Underexplored; new discovery required. |
| Community-contributed information | Early trust category. | Later community architecture is much broader; first slice defers community. | Need for user-supplied quality signals survives; full community product not proven. |
| Ranking/tier concept | Scattered historical domain ideas. | Dedicated Sep ranking file empty. | Unresolved/under-discovered rather than rejected. |

## 31. Over-engineering signals

- Architecture repeatedly tried to stabilize taxonomies, aggregates, package choices and module/folder structures before user evidence was equally mature.
- Some later community, ranking/intelligence, generalized versioning, generic organization, and rules-engine ideas have weaker product-discovery support than their architectural sophistication suggests.
- Several frozen/canonical documents acquired implementation authority that could make speculative modelling look like discovered product truth.
- `JSONB`, repositories, eventing, search fallbacks, HMAC approval, projection tables and Laravel packages are delivery questions. They should never be used as evidence that a user problem exists.

## 32. Under-engineering signals

- The first rejection of Programme Offering/Campus simplified away real variation and was later reversed.
- Treating external source absence as deletion would collapse evidence uncertainty into canonical truth; the later `MISSING ≠ DELETE` rule corrects this.
- A single `Programme` meaning cannot safely cover source-faithful institutional naming and StudyNexus discovery normalization once global heterogeneity is considered.
- Geographic admission concepts cannot be permanent institution attributes; catchment/ELDS proved policy context and temporal/jurisdiction variation matter.
- News cannot own the facts it reports; otherwise content publication could silently mutate business truth.

## 33. What StudyNexus has deliberately decided not to do

| Deliberate non-goal | Evidence/reason |
| --- | --- |
| Operate enrolment/application transactions as the core product | Early workflow ends at decision; external applications are outside core flow. |
| Require accounts for core MVP discovery | Explicit OQ4-1 resolution. |
| Institution/provider self-service in MVP | Explicit Stage1 exclusion. |
| Public API/developer platform in MVP | Explicit Stage1 exclusion. |
| Multi-country public scope on day one | Explicit Nigeria-only decision. |
| Marketplace/transaction platform in MVP | Explicit Stage1 exclusion. |
| Allow user reports to directly mutate canonical data | Explicit information-quality decision. |
| Treat missing source records as automatic deletion | Hard acquisition rule. |
| Let AI/extraction output silently become authority | Approved News/acquisition principle. |
| Operate scholarship applications/selection/disbursement | Approved funding boundary. |
| Operate exam registration/payment/booking/results/certification | Proposed examination boundary, consistent with broader product principle. |
| Operate visa/government/service-provider transactions | Approved Education Services boundary. |
| Index every possible filter combination for SEO | Strong selective-publication principle; exact landing-page model still proposed. |
| Treat Typesense as canonical truth | Architecture constraint: it is derived/rebuildable. |

## 34. Recurring tensions that explain the history

| Tension | How it appears in corpus | Current handling |
| --- | --- | --- |
| Simplicity ↔ domain precision | Programme Offering/Campus rejection then reversal. | Prefer simplest model that still preserves observed variation. |
| MVP focus ↔ product breadth | Broad Stage1 capability model vs narrow first vertical slice vs September additions. | Separate discovery status from delivery status. |
| SEO scale ↔ index quality | Dynamic filters/global programme combinations vs thin-page/crawl risk. | Selective publication, canonical URLs, no automatic page explosion. |
| Automation ↔ human trust | Extraction/matching/rules engines vs conflicting/stale sources. | Automation proposes/assists; consequential uncertainty reviewed. |
| Global abstraction ↔ local education systems | Nigeria-first terms like ELDS/Post-UTME vs future countries. | Model underlying meaning while preserving official local terminology. |
| Canonical truth ↔ uncertain evidence | Sources conflict/disappear/change. | Evidence/reconciliation separated from canonical state. |
| Reuse ↔ contextual meaning | Programme, Organization, Eligibility, Status used across contexts. | Do not globally unify solely because English word is shared. |

## 35. Historical architecture hypotheses audited as discovery evidence

| Historical architecture hypothesis | Product discovery that predates/supports it | Evidence strength | What is *not* decided here |
| --- | --- | --- | --- |
| Institutions | Institution identity, structure/location, legitimacy, institution discovery and comparison. | Strong | No decision that this must be one LBC module. |
| AcademicOfferings | Users need institution-specific programme facts; later concrete offering variation and Sep source-faithful offering proposal. | Strong | Exact Programme/ProgrammeInstance/InstitutionOffering model unresolved. |
| Admissions | Requirements, cycles, cutoffs, pathways, screening, catchment/ELDS and self-assessment. | Very strong | No module boundary prescribed. |
| Recognition | Accreditation/legitimacy is repeatedly user-relevant trust/comparison data. | Medium-high | Recognition lifecycle/international model under-researched. |
| Examinations | Exam information is part of education journey; detailed timetable model is only proposed and overall delivery Phase2+. | Medium | No current physical-module conclusion. |
| Funding | Scholarship/funding user need from earliest discovery; Sep03 gives detailed approved opportunity model. | Very strong | No physical boundary conclusion. |
| Discovery | Discoverability is one of five original problems; search ≠ exploration; later classification/SEO work reinforces. | Very strong | Discovery as product responsibility does not automatically equal code module. |
| Content | Guides/resources historically planned; News later approved with distinct lifecycle. | Medium-high | Whether content is one or multiple responsibilities remains later design question. |
| InformationQuality | Trust is original problem; provenance + quality are explicit MVP capabilities; reconciliation/human review mature later. | Very strong | No claim about folder/module naming. |

---

# Part III — StudyNexus Canonical Product Discovery

This part is the clean current representation **after** archaeology. It preserves uncertainty instead of pretending every proposal is settled.

## 36. Product purpose

StudyNexus is a Nigeria-first education knowledge and discovery product intended to help learners and their decision supporters find, understand, compare and assess the reliability of education opportunities and information. It connects fragmented source information into structured, source-aware knowledge and guides users to authoritative external channels when the actual transaction or decision belongs to another organization.

Long term, StudyNexus aims to become education infrastructure for Africa, but current public scope is Nigeria-first and the product should not pretend to have validated a global operating model yet.

## 37. Problem space

**Canonical problem dimensions:** fragmentation, trust, discoverability, comparison, accessibility. Additional system-side problems—source conflict, staleness, semantic heterogeneity and data reconciliation—exist because solving the user problems at scale requires StudyNexus to maintain trustworthy connected knowledge.

## 38. Users / user groups

Current primary user groups remain: secondary students/recent graduates; undergraduates; parents/guardians; guidance counsellors/teachers. Current prioritization favors the first two. Institutions, providers, authorities and researchers are secondary ecosystem actors. These user definitions have high stakeholder authority but limited direct observational validation, so future user research may revise priorities and jobs without invalidating the information problems already discovered.

## 39. User outcomes

- Find plausible education opportunities without already knowing every institution/programme/provider by name.
- Understand what an opportunity is, its requirements, cost/benefits, timing/location and authoritative source.
- Compare alternatives on decision-relevant dimensions.
- Judge whether information is current, authoritative, verified, historical, conflicting or incomplete.
- Understand what to do next and where the authoritative external action happens.
- Make a more informed education decision without StudyNexus pretending to make admissions, funding, immigration or examination decisions on the user’s behalf.

## 40. Business / product outcomes

- Build a trusted structured education knowledge asset whose provenance and change history can be explained.
- Create strong public discovery loops around programmes, institutions, admissions and later funding/exams/services/content.
- Make authoritative education information accessible and indexable without generating low-quality or misleading surfaces.
- Establish a foundation that can later support personalization, verified organization participation and trusted data interfaces.
- Keep monetization secondary to information architecture until real usage validates the business model.

## 41. Product principles

| Principle | Why | Status |
| --- | --- | --- |
| Canonical truth is not the same as source evidence | Sources can conflict, disappear or be wrong; evidence and canonical state need traceability. | CURRENT REQUIREMENT |
| Do not infer deletion from absence | `MISSING ≠ DELETE`. | CURRENT REQUIREMENT |
| Preserve institutional/authority terminology where it carries meaning | Normalization must not erase source-faithful names/policies. | CURRENT PRINCIPLE |
| Normalize for discovery only where useful | Discovery concepts/classification should solve user finding/comparison needs, not force universal ontologies. | STRONG PROPOSAL / partly current |
| Search and discovery are related but not identical | Known-target lookup and structured exploration solve different needs. | CURRENT DISCOVERY |
| Inform / explain / compare / hand off | External authorities/providers own their transactions and decisions. | CURRENT PRINCIPLE |
| Human review protects consequential uncertainty | Automation/AI can assist extraction/matching but should not silently canonicalize uncertain facts. | CURRENT REQUIREMENT |
| Selective publication over page explosion | Not every possible filter combination should become an indexable SEO page. | CURRENT PRINCIPLE; exact landing model proposed |
| Nigeria-first, not Nigeria-semantic-universal | Current scope is Nigerian; local terms should not be mistaken for global universals. | CURRENT PRINCIPLE |
| Accounts only when persistence justifies them | Core MVP remains accessible without profile/account dependency. | MVP DECISION |
| Progressive automation | Requirements/self-assessment precede machine eligibility when rule quality is insufficient. | CURRENT PRINCIPLE |
| History is contextual | Preserve history according to the meaning of cutoffs, policies, cycles, source evidence, news, etc. | CURRENT INFERENCE |

## 42. Product capabilities and status

| Capability | Canonical status | Delivery status | Notes |
| --- | --- | --- | --- |
| Trusted educational knowledge maintenance | CURRENT | MVP foundation | Acquire/organize/verify/maintain/provenance/quality. |
| Institution discovery | CURRENT | First Vertical Slice | Profile, location, legitimacy/accreditation, offerings. |
| Programme/offering discovery | CURRENT | First Vertical Slice | Exact model terms need reconciliation. |
| Admission information | CURRENT | First Vertical Slice | Requirements/cutoffs/cycles/routes; geographic policy enrichment approved. |
| Search | CURRENT | First Vertical Slice | Typesense is technical serving mechanism. |
| Structured discovery/faceting | CURRENT | First Vertical Slice | Classification taxonomy evolves. |
| Comparison | CURRENT business capability | Dedicated UI DEFERRED Phase2 | Comparison need remains foundational. |
| Funding discovery | CURRENT approved discovery | Public experience DEFERRED Phase2 | Richer Sep model approved. |
| News/time-sensitive updates | CURRENT approved discovery | UNKNOWN/likely post-slice | Distinct from evergreen content. |
| Evergreen educational content | CURRENT/FUTURE product area | DEFERRED Phase2 | Guides/resources/content models. |
| Education Services & Access | CURRENT approved discovery | UNKNOWN | Task/service-oriented discovery. |
| Examination scheduling/information | PROPOSED | DEFERRED Phase2+ | Detailed Sep model not approved. |
| Eligibility automation | DEFERRED | Phase2+ | Self-assessment info first. |
| Personalization/saves/alerts | FUTURE | Stage2 | Needs identity/preferences. |
| Verified provider/institution participation | FUTURE | Stage3 | Governance/trust challenge. |
| Public API/data infrastructure | FUTURE | Stage4 | Long-term vision. |
| Rankings/intelligence | UNKNOWN | UNKNOWN | Insufficient substantive discovery. |

## 43. MVP reconstruction

### Strategic MVP — Stage 1 Trusted Education Knowledge Base

Business-level MVP aims to solve the five problem dimensions through acquisition, organization, verification, maintenance, discovery, search, comparison, presentation, provenance and information quality. This is broader than a single release slice.

### First Vertical Slice — implementation/learning boundary

The approved minimum public loop is programme search/faceting → programme detail with admissions/cutoff/tuition/accreditation/trust → institution detail, backed by at least one real acquisition/import and public SEO basics. Related scholarships can appear inline but full scholarship discovery, dedicated comparison, eligibility evaluation, content, accounts, community, notifications, exams/resources, study abroad, self-service and API are Phase 2+.

### Capability-minimum language

If a later discovery document says “MVP” for a capability (for example the proposed exam timetable), that means the smallest useful surface **inside that capability** unless an explicit roadmap decision says it joins the overall StudyNexus MVP.

## 44. Explicit non-goals

- Not primarily an admissions enrolment/application transaction platform.
- Not an exam registration, payment, booking, marking, results or certification operator.
- Not a scholarship provider application, selection, award or disbursement system.
- Not a visa/immigration/government-processing platform or general business-directory/maps product.
- Not dependent on public accounts for core MVP discovery.
- Not institution/provider self-service in Stage1 MVP.
- Not public API/developer infrastructure in Stage1 MVP.
- Not a multi-country public product on day one.
- Not an automatic truth system where scrapers/AI/user reports can directly mutate canonical facts.
- Not an SEO system that indexes every mathematically possible filter combination.

## 45. Domain/business concepts — candidates, not architecture

| Concept | Meaning | Status |
| --- | --- | --- |
| Institution | Recognized education institution identity/structure. | CURRENT |
| Campus / location | Concrete place/context for institution/offering where required. | CURRENT after reversal |
| Programme | Historically overloaded; exact preferred meaning unresolved. | AMBIGUOUS |
| ProgrammeInstance | Concrete offering context in V4.6 baseline. | CURRENT baseline; may be renamed/reframed |
| InstitutionOffering | Source-faithful offering proposed Sep18. | PROPOSED |
| DiscoveryProgramme | StudyNexus curated discovery concept proposed Sep18. | PROPOSED |
| Qualification/Award | Educational credential associated with offering. | CURRENT concept; international semantics under-researched |
| AdmissionCycle/Policy/Requirement/Cutoff | Admission information and temporal/policy context. | CURRENT |
| Catchment/Geographic Admission Classification | Policy-context geography. | CURRENT approved |
| Institutional Admission Screening/Post-UTME | Nigeria-specific admission screening. | CURRENT approved |
| Accreditation/Recognition | Authority-backed legitimacy/status information. | CURRENT need; model depth open |
| FundingOpportunity/Cycle/Criteria/Benefit | Scholarship/funding discovery. | CURRENT approved |
| Examination Product/Administration/Schedule Event | Exam schedule/reference model. | PROPOSED |
| Guide/Resource/Page | Evergreen educational content. | DEFERRED delivery |
| News/Announcement/Correction | Time-sensitive reporting/context. | CURRENT approved discovery |
| Education Service Point/Service/Authorization | Where/how to access education-related external services. | CURRENT approved discovery |
| Source/Capture/Candidate/Conflict/Review/Evidence/Provenance | Information-quality/reconciliation vocabulary. | CURRENT responsibility; exact tactical model may evolve |
| Country/AdministrativeArea/Location | Geographic reference/context. | CURRENT |
| Learner/Profile/Preference | Persistent learner state. | DEFERRED/FUTURE |
| Ranking/Metric | Institutional comparison/intelligence. | UNKNOWN |

## 46. Important workflows

- User: Explore → Evaluate → Compare → Assess requirements/eligibility → Assess reliability → Decide.
- Information: Acquire/Capture → Extract/Normalize → Candidate → Match/Compare → Conflict/Change detection → Review → Approve/Reject/Ignore → Canonical change → Derived search/public representations.
- Editorial: Source/report → author/contextualize → review → publish/update/correct/retract, while canonical facts remain with their owning information area.
- Funding: discover → understand benefits/criteria/timing → assess possible fit → official application handoff.
- Education service: identify task → find authorized service/provider/location → understand requirements/cost/appointment → directions/official handoff.

## 47. Important rules

- Missing evidence is not deletion.
- User/AI/source observations do not become canonical merely because they are newer.
- Admission requirements and evaluated candidate eligibility are different concepts.
- Funding eligibility and provider selection are different concepts.
- Catchment/ELDS does not guarantee admission and is not a permanent institution attribute.
- News does not own the underlying fact it reports.
- Public visibility/indexability is not identical to canonical existence or lifecycle status.
- Search indexes/projections are derived and rebuildable from canonical knowledge.
- Current Nigeria scope must not turn Nigeria-specific terminology into global universal semantics.

## 48. Information ownership reconstruction

| Information | Canonical/authoritative responsibility | Evidence responsibility | Derived/public responsibility |
| --- | --- | --- | --- |
| Institution identity/structure facts | Canonical education knowledge | External official/institution sources + evidence lineage | Discovery/search/public representations consume; do not redefine identity. |
| Institution-specific offering facts | Canonical education knowledge for the actual offering; exact model name unresolved | Institution/source evidence | Optional normalized discovery representation may classify it. |
| Admission facts | Canonical admission information | Institution/JAMB/authority source evidence | Discovery/public pages consume; eligibility evaluation derives from requirements. |
| Recognition/accreditation facts | Canonical authority-recognition information | Regulator/authority evidence | Public trust/comparison consumes. |
| Funding opportunity facts | Canonical funding information | Provider/official evidence | Search/matching/public explanation consumes. |
| Exam schedule facts | Future/proposed canonical examination information | Exam authority evidence | Search/calendar/news consumes. |
| Discovery concepts/classifications | StudyNexus-curated derived knowledge where approved | Evidence may include source terms, user demand and external taxonomies | Search/SEO uses them; they do not overwrite source-faithful offering names. |
| News/editorial content | Editorial responsibility | Cited sources/author attribution | May report canonical changes but not own them. |
| Source/capture/candidate/review/provenance | Information-quality process | Raw/official/public inputs and operator decisions | Explains why canonical changes occurred. |
| Geography reference | Reference/context knowledge | Official geographic sources | Used by institutions, policies, funding, services and discovery. |
| Search documents | Derived projection | Canonical + discovery/publication inputs | Disposable/rebuildable serving representation. |

## 49. Trust / provenance model

StudyNexus trust is not a single badge. It is the combination of source authority, provenance, freshness, historical context, conflict visibility, controlled reconciliation, review, publication, and user-facing explanation. The corpus supports a hybrid trust model: direct official attribution where possible, StudyNexus verification where performed, explicit historical status where data is period-specific, and cautious treatment of community/user-submitted evidence. The exact presentation (“verified” badges, stale thresholds, etc.) remains partly UX hypothesis.

## 50. Search / discovery model

Search answers “find what I know or can describe.” Discovery answers “show me relevant options and meaningful categories even when I do not know the exact target.” Source-faithful names should remain searchable. Curated normalization/classification can improve facets, related concepts, cross-institution comparison and SEO, but the Sep18 proposal argues persuasively that classification should not be a prerequisite for storing or displaying an offering. That final rule remains proposed until explicitly ratified.

## 51. SEO / publication model

Canonical entity state, public visibility, search-engine indexability, canonical URL/routing, sitemap inclusion and curated discovery landing pages are separate decisions. StudyNexus should prefer high-value canonical/entity and selective discovery pages over mechanically indexing every parameter combination. Exact publication-state implementation is not part of this product-discovery deliverable.

## 52. Geographic model

Current public scope is Nigeria. The product nevertheless needs a geography vocabulary that can express country and jurisdiction-specific administrative areas without assuming every country has Nigerian states/LGAs. Geography can represent location, policy applicability, funding restrictions/destinations, service access and discovery filters. Official local terminology should be preserved.

## 53. Internationalization considerations

Internationalization is a **future product scope** and a **present semantic stress test**. The product should not design every conceivable education system today, but should avoid obvious false universals where the corpus already proves variability: Nigerian ELDS/Post-UTME terminology, administrative-area types, qualification systems, accreditation structures, programme naming/classification and admission policies.

## 54. Constraints

| Constraint | Class | Assessment |
| --- | --- | --- |
| Nigeria-first public scope | PRODUCT CONSTRAINT | Explicit owner decision; future international expansion later. |
| Core MVP usable without public accounts | PRODUCT CONSTRAINT | Explicit OQ4-1 decision. |
| No external transactions for core information product | PRODUCT BOUNDARY | Repeated across workflows and Sep additions. |
| Human review / controlled canonicalization for uncertain changes | TRUST CONSTRAINT | Strong acquisition/quality evidence. |
| External acquisition separated from production credentials | TECHNICAL/SECURITY CONSTRAINT | V4.6 canonical hard boundary. |
| PostgreSQL canonical source of truth | TECHNICAL CONSTRAINT | Current architecture, not user need. |
| Typesense derived serving/projection | TECHNICAL CONSTRAINT | Current search architecture; public fallback later removed by V4.7 summary. |
| Modular monolith / Laravel Beyond CRUD | ARCHITECTURAL CONSTRAINT | Current implementation direction, not product outcome. |
| No microservices current design | ARCHITECTURAL CONSTRAINT | Current architecture choice. |
| Relational canonical semantics; JSONB exception/source-raw | TECHNICAL PRINCIPLE | Sep02 technical note; not product requirement. |
| Solo-developer constraint | UNKNOWN | The supplied corpus does not substantiate an explicit solo-developer product constraint. |
| Budget constraint | UNKNOWN | No sufficiently explicit canonical budget constraint recovered for product scope. |

## 55. Risks and assumptions

| Risk/assumption | Why it matters | Evidence strength |
| --- | --- | --- |
| The five problem dimensions are severe enough to drive adoption | Core value proposition rests on them. | Stakeholder-defined; needs direct user validation. |
| Programme discovery is the best first public learning loop | Shapes first vertical slice. | Reasoned/approved product-design decision; needs usage validation. |
| Users value source/provenance/freshness signals | Central trust differentiator. | Problem evidence strong; exact presentation effectiveness untested. |
| Structured normalization improves discovery without erasing institutional meaning | Central to comparison/global scaling. | Strong reasoning; Sep18 exact model proposed only. |
| Organic search/SEO is strategically important | Influences SSR/canonical pages/selective landing pages. | Strong product strategy assumption; no traffic data yet. |
| Public-source acquisition can achieve adequate coverage/freshness | Core knowledge base depends on it. | Strategy decision; source-by-source quality still needs evidence. |
| International extensibility can be preserved without premature abstraction | Affects semantics now. | Reasonable design principle; requires country exemplars. |
| Education Services & Access merits product priority | Approved discovery, potentially broad scope. | No roadmap or direct demand validation. |

## 56. Open questions

| ID | Question | Why it matters | Priority |
| --- | --- | --- | --- |
| OQ-CAN-01 | How exactly do `Programme`, `ProgrammeInstance`, `InstitutionOffering` and `DiscoveryProgramme` relate? | Could materially change ubiquitous language, ownership and persistence. | HIGH |
| OQ-CAN-02 | Is optional classification a ratified product rule or still a Sep18 hypothesis? | Determines whether unclassified offerings can be fully public/searchable. | HIGH |
| OQ-CAN-03 | Which first-user problems are empirically most severe/frequent? | Affects prioritization and product outcome metrics. | HIGH |
| OQ-CAN-04 | Does WF7 undergraduate current-journey remain in committed product direction? | Early approved workflow disappeared from focused planning. | MEDIUM-HIGH |
| OQ-CAN-05 | Are career pathways/transfers/postgraduate/internships still core opportunities? | Original user needs were not explicitly rejected. | MEDIUM |
| OQ-CAN-06 | What roadmap priority do approved News and Education Services additions have? | Approved semantics do not equal delivery commitment. | MEDIUM-HIGH |
| OQ-CAN-07 | Should the proposed examination timetable discovery be approved, changed or rejected? | Detailed model exists but status remains proposed. | MEDIUM |
| OQ-CAN-08 | What is the real ranking/intelligence user problem? | Dedicated ranking file is empty. | MEDIUM |
| OQ-CAN-09 | What recognition/accreditation semantics are needed across Nigerian and later foreign systems? | Trust and comparison depend on it; current detailed model is under-researched. | HIGH |
| OQ-CAN-10 | When do actor identities warrant a shared Organization concept, if ever? | Scholarships, exams, news and services reuse providers/authorities differently. | MEDIUM |
| OQ-CAN-11 | What user-facing trust signals actually improve confidence/comprehension? | Current badges/staleness patterns are UX hypotheses. | HIGH |
| OQ-CAN-12 | What evidence should trigger publication/noindex of a discovery landing page? | Selective SEO principle is clear; thresholds/criteria are not. | MEDIUM |
| OQ-CAN-13 | What are the authoritative source hierarchies for each information category? | Conflict resolution depends on category/context, not one universal priority number. | HIGH |

---

# Part IV — Traceability

## 57. Claim / evidence ledger

The full 70-claim ledger is supplied as `StudyNexus-Claim-Evidence-Ledger.csv`. It records source file/path, section, date/version, statement type, declared authority, historical status, evidentiary relevance, contradicting evidence, current assessment, validity and confidence. Condensed view:

| ID | Claim | Type | Status | Confidence | Primary source |
| --- | --- | --- | --- | --- | --- |
| C001 | StudyNexus is a comprehensive education knowledge platform for Nigeria that aggregates, verifies, organizes and makes education information searchable, comparable and trustworthy. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/01-business-overview.md |
| C002 | Long-term vision is education infrastructure for Africa. | DECISION | FUTURE | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C003 | Primary users are secondary students/recent graduates, undergraduates, parents/guardians, and guidance counsellors/teachers. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C004 | Primary user priority: secondary students/graduates first, undergraduates second, parents third, counsellors fourth. | DECISION | CURRENT | MEDIUM | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| C005 | Users manually piece information together from JAMB, WAEC, institution sites, scholarship sites, PDFs, blogs, social media, WhatsApp and friends. | USER/PROBLEM INSIGHT | CURRENT | MEDIUM | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C006 | No trusted source presents a complete connected view. | DISCOVERY | CURRENT | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C007 | Users cannot confidently assess reliability/currentness/authority. | DISCOVERY | CURRENT | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C008 | Known-target search is insufficient; structured exploration is needed. | DISCOVERY | CURRENT | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C009 | Educational opportunities lack standardized comparable presentation. | DISCOVERY | CURRENT | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C010 | Information can be practically inaccessible due to format/connectivity/device/usability. | DISCOVERY | CURRENT | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C011 | Stage 1/MVP is a Trusted Education Knowledge Base solving the five problem dimensions; evolution stages are strategic, not fixed roadmap. | DECISION | MVP | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C012 | MVP excludes institution/provider self-service, public API/developer platform, multi-country support and marketplace/transactional features. | DECISION | MVP | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C013 | Core MVP capabilities: acquire, organize, verify, maintain, discover, search, compare and present educational knowledge; provenance and information quality support them. | DECISION | MVP | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C014 | Core workflows WF1-WF6: Explore, Evaluate, Compare, Assess Eligibility, Assess Information Reliability, Make Educational Decision; application after decision is out of scope. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C015 | Undergraduate-specific WF7 covers current institution/programme/year, academic calendar, requirements/status, courses, assessments, fees, deadlines, policies, scholarships and progression/transfer. | DECISION | UNKNOWN | MEDIUM | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| C016 | Core MVP does not require public user accounts; persistent identity should wait for persistent/personal capabilities. | DECISION | MVP | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| C017 | Eligibility starts as authoritative requirements for self-assessment and may progress to structured evaluation when rules are reliable/machine-actionable. | DECISION | DEFERRED | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| C018 | Early business usage of Programme meant a specific course of study offered by an institution. | DISCOVERY | SUPERSEDED | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/01-business.md |
| C019 | Domain discovery promoted Programme to a first-class aggregate concept. | PROPOSAL | SUPERSEDED | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/11-domain-discovery-topic2.md |
| C020 | Programme Offering/Programme Instance and Campus were initially considered missing but rejected/deferred as premature complexity. | REJECTED DECISION | REJECTED | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/18-domain-resolution-analysis.md |
| C021 | ProgrammeInstance and Campus were later added because abstract Programme conflated concrete campus/delivery/year offerings. | DECISION | CURRENT | HIGH | StudyNexus-Independent-Audit-Package-v4/03-IMPLEMENTATION/STUDYNEXUS-CANONICAL-REMEDIATION-REPORT.md |
| C022 | AdmissionPolicy and CutOffMark were moved to ProgrammeInstance because different instances can vary. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/V4.2-REMEDIATION-REPORT.md |
| C023 | Sep18 proposes source-faithful InstitutionOffering distinct from curated DiscoveryProgramme; classification optional. | PROPOSAL | EXPLORATORY | MEDIUM-HIGH | STUDYNEXUS_PROGRAMME_DISCOVERY_CLASSIFICATION-18th-Sept-2026.md |
| C024 | Sep18 rejects requirement for a giant global programme master and mandatory classification of every offering. | PROPOSAL | EXPLORATORY | MEDIUM | STUDYNEXUS_PROGRAMME_DISCOVERY_CLASSIFICATION-18th-Sept-2026.md |
| C025 | User reports of incorrect/outdated/missing/conflicting information enter information-quality workflow and never directly mutate canonical data. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| C026 | Provenance and information quality are MVP business capabilities, not merely implementation concerns. | DECISION | MVP | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C027 | External acquisition should use immutable raw captures, extraction/normalization/reconciliation, human review and approved import artifacts separated from canonical production. | TECHNICAL CONSTRAINT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md |
| C028 | External acquisition environment must not hold production PostgreSQL/Redis/Typesense credentials. | TECHNICAL CONSTRAINT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md |
| C029 | MISSING does not mean DELETE; absence in a source requires review and must not silently delete/unpublish canonical facts. | REQUIREMENT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/06-data-acquisition.md |
| C030 | Automated/AI extraction may assist but is not authoritative and must not silently become canonical truth. | REQUIREMENT | CURRENT | HIGH | News Post-UTME - Product Discovery Additions V2 03-09-2026.md |
| C031 | Search and structured discovery are distinct user/product capabilities. | DISCOVERY | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C032 | Typesense serves V1 public discovery while PostgreSQL is canonical detail/source data in V4.6. | TECHNICAL CONSTRAINT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md |
| C033 | V4.6 allowed PostgreSQL FTS fallback for degraded/admin search; V4.7 later mandated no PostgreSQL public-search fallback. | SUPERSEDED DECISION | CURRENT | MEDIUM-HIGH | studynexus-v4.7-remediation-package/studynexus-v4.7/README.md |
| C034 | Search projections must be rebuildable from PostgreSQL canonical data. | TECHNICAL CONSTRAINT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md |
| C035 | SEO should use selective indexation/canonical pages rather than indexing every possible filter combination. | PROPOSAL | CURRENT | MEDIUM-HIGH | STUDYNEXUS_PROGRAMME_DISCOVERY_CLASSIFICATION-18th-Sept-2026.md |
| C036 | Catchment/ELDS are admission-policy concepts, not permanent institution attributes. | DISCOVERY | CURRENT | HIGH | Catchments-ELDS-Additions-03-09-2026.md |
| C037 | Catchment can vary by institution/campus/programme/admission context and must preserve authoritative policy basis. | REQUIREMENT | CURRENT | HIGH | Catchments-ELDS-Additions-03-09-2026.md |
| C038 | Nigeria-first must not mean Nigeria-hardcoded; Nigerian concepts should be represented by underlying semantics plus jurisdiction-specific terminology/classification. | PRODUCT PRINCIPLE | CURRENT | HIGH | Catchments-ELDS-Additions-03-09-2026.md |
| C039 | Funding discovery should cover broader FundingOpportunity, not only scholarship, and inform/explain/match/handoff rather than operate provider application/selection/disbursement. | DISCOVERY | CURRENT | HIGH | Scholarships - Product Discovery Additions 03-09-2026.md |
| C040 | Funding eligibility is distinct from provider selection. | DISCOVERY | CURRENT | HIGH | Scholarships - Product Discovery Additions 03-09-2026.md |
| C041 | Public scholarship landing/detail/search pages were deferred to Phase 2 in first vertical slice, with entity/admin and inline related scholarship data in slice. | DECISION | DEFERRED | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md |
| C042 | Original first vertical slice deferred examination/resource discovery to Phase 2+. | DECISION | DEFERRED | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md |
| C043 | Sep02 proposes exam information model: authority → product → administration → schedule events, with cancellations/postponements/history/source conflicts and informational handoff boundary. | PROPOSAL | EXPLORATORY | MEDIUM-HIGH | Proposed Product Discovery Addition 02-09-2026.md |
| C044 | Exam practice, attempts, scoring and learner progress are different future concerns from timetable/reference information. | PROPOSAL | FUTURE | MEDIUM | Proposed Product Discovery Addition 02-09-2026.md |
| C045 | News reports/explains/contextualizes changes but does not become canonical owner of the underlying fact. | PRODUCT PRINCIPLE | CURRENT | HIGH | News Post-UTME - Product Discovery Additions V2 03-09-2026.md |
| C046 | Time-sensitive News and evergreen educational content have distinct user purposes/lifecycles. | DISCOVERY | CURRENT | HIGH | News Post-UTME - Product Discovery Additions V2 03-09-2026.md |
| C047 | Post-UTME should be understood as Nigeria-specific institutional admission screening/assessment, not merely news or universally an examination. | DISCOVERY | CURRENT | HIGH | News Post-UTME - Product Discovery Additions V2 03-09-2026.md |
| C048 | Education Services & Access helps users find where/how to complete education-related tasks, with information, discovery, guidance and authoritative handoff rather than operating external services. | DISCOVERY | CURRENT | HIGH | Education Services & Access - Product Discovery Additions 03-09-2026.md |
| C049 | Service discovery should be task/service-oriented rather than merely an organization/location directory. | PRODUCT PRINCIPLE | CURRENT | HIGH | Education Services & Access - Product Discovery Additions 03-09-2026.md |
| C050 | The dedicated ranking addition file contains no substantive evidence. | OBSERVATION | UNKNOWN | HIGH | Ranking - Product Discovery Additions 03-09-2026.md |
| C051 | Geography is used for institution location, discovery filters, admission policies, funding restrictions and service access; country/admin-unit semantics vary by jurisdiction. | DISCOVERY | CURRENT | HIGH | Catchments-ELDS-Additions-03-09-2026.md |
| C052 | Corpus has institutions, regulators/exam authorities, scholarship providers, publishers/government/service providers, but does not establish one universal Organization identity model. | FINDING | UNKNOWN | MEDIUM-HIGH | Education Services & Access - Product Discovery Additions 03-09-2026.md |
| C053 | Programme Discovery was prioritized as the highest-priority public journey and first vertical slice focuses programme search → programme detail → institution/admission context. | PROPOSAL | MVP | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-DISCOVERY.md |
| C054 | Product experience document explicitly identifies critical MVP unknowns requiring real user research. | OPEN QUESTION | UNKNOWN | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-ARCHITECTURE.md |
| C055 | Corpus contains no documented completed customer interviews/surveys/usability studies; references are mostly proposed future research. | FINDING | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/product-experience/PRODUCT-EXPERIENCE-ARCHITECTURE.md |
| C056 | Accessibility is both a foundational problem dimension and a detailed product-experience requirement. | REQUIREMENT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/01-business-overview.md |
| C057 | Nigeria is the current geographic product scope; international support is future, while later approved semantics avoid Nigeria-hardcoding where low-cost. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| C058 | PostgreSQL is canonical source of truth; Typesense is a derived search serving/projection mechanism. | TECHNICAL CONSTRAINT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md |
| C059 | StudyNexus is a modular monolith using Laravel/LBC; microservices are not the current system design. | TECHNICAL CONSTRAINT | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/canonical/04-architecture.md |
| C060 | JSONB should be exception/source-raw for variable document-like data, not default canonical domain modelling. | TECHNICAL CONSTRAINT | CURRENT | MEDIUM | JSONB usage principles 02-09-26.md |
| C061 | Career pathways are an original need for secondary students but later focused discovery provides no substantive dedicated capability model. | USER/PROBLEM INSIGHT | UNKNOWN | MEDIUM | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/01-business-overview.md |
| C062 | Transfers, postgraduate opportunities and internships are original undergraduate needs but are not developed in later first-slice discovery. | USER/PROBLEM INSIGHT | UNKNOWN | MEDIUM | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/01-business-overview.md |
| C063 | Community-contributed information exists as a trust/information category, but a full public community/Q&A product is not established by early problem discovery and is deferred later. | DISCOVERY | FUTURE | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C064 | Users need accreditation/recognition information as a legitimacy/trust and comparison input. | USER/PROBLEM INSIGHT | CURRENT | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/01-business-overview.md |
| C065 | Publication visibility is distinct from lifecycle/canonical status and can be selectively controlled. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/governance/DISCOVERY-CLOSURE.md |
| C066 | Core discovery/search/information access intended free; exact monetization deferred and should not drive information architecture. | DECISION | CURRENT | MEDIUM-HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/04-open-questions.md |
| C067 | Across admissions, examinations, funding and service access, StudyNexus repeatedly chooses inform/explain/discover/compare/handoff rather than operate external transactions or decisions. | FINDING | CURRENT | HIGH | Education Services & Access - Product Discovery Additions 03-09-2026.md |
| C068 | Historical validity/time matters for cutoffs, policies, sources, scholarship cycles, exam schedules and news updates; history is contextual rather than one universal fact-version concept. | FINDING | CURRENT | HIGH | Scholarships - Product Discovery Additions 03-09-2026.md |
| C069 | Official/verified/historical/community-contributed are information categories/trust concepts, not necessarily four day-one product modes. | DECISION | CURRENT | HIGH | StudyNexus-V4.6-Developer-Handoff/PRE-IMPLEMENTATION-BASELINE-V2/archive/03-approved-decisions.md |
| C070 | Approved Sep03 additions (Catchment, Scholarships, News, Education Services) do not explicitly rewrite the overall first-vertical-slice/MVP roadmap. | FINDING | CURRENT | HIGH | Catchments-ELDS-Additions-03-09-2026.md; Scholarships - Product Discovery Additions 03-09-2026.md; News Post-UTME - Product Discovery Additions V2 03-09-2026.md; Education Services & Access - Product Discovery Additions 03-09-2026.md |

## 58. Traceability matrix — major canonical conclusions

| Canonical conclusion | Historical chain | Primary source | Evidence class | Assessment |
| --- | --- | --- | --- | --- |
| Five core problems | Approved business decisions A3-1…A3-5 | archive/03-approved-decisions.md | Stakeholder definition | Current foundational discovery; needs empirical validation. |
| No-account core MVP | OQ4-1 | archive/04-open-questions.md | Owner decision | MVP constraint. |
| Information-quality reports do not directly mutate canonical | OQ4-2 | archive/04-open-questions.md | Owner decision | Current trust principle. |
| Eligibility automation deferred | OQ6-3 | archive/04-open-questions.md | Owner decision | Current progressive automation strategy. |
| ProgrammeInstance/Campus need | FIX 3 audit + V4.2 blockers | Independent-Audit-Package-v4 remediation + V4.2 report | Audit/remediation evidence | Underlying concrete-offering variation is current. |
| MISSING ≠ DELETE | Canonical acquisition hard requirement | canonical/06-data-acquisition.md | Canonical technical/business trust requirement | Current. |
| First vertical slice = programme discovery loop | Discovery Closure §10/11 | governance/DISCOVERY-CLOSURE.md | Approved closure | MVP implementation slice. |
| FundingOpportunity broader than scholarship | Approved Sep03 addition | Scholarships - Product Discovery Additions 03-09-2026.md | Approved discovery | Current product semantics; public rollout deferred. |
| Catchment/ELDS are policy context | Approved Sep03 addition | Catchments-ELDS-Additions-03-09-2026.md | Approved discovery | Current. |
| News reports but does not own canonical facts | Approved Sep03 News V2 | News Post-UTME - Product Discovery Additions V2 03-09-2026.md | Approved discovery | Current. |
| Post-UTME is admissions screening concept | Approved Sep03 News V2 | News Post-UTME - Product Discovery Additions V2 03-09-2026.md | Approved discovery | Current. |
| Education Services = task/service discovery + handoff | Approved Sep03 addition | Education Services & Access - Product Discovery Additions 03-09-2026.md | Approved discovery | Current semantics; roadmap unknown. |
| Exam schedule model | Sep02 proposed addition | Proposed Product Discovery Addition 02-09-2026.md | Proposal | Exploratory/future. |
| InstitutionOffering vs DiscoveryProgramme | Sep18 proposed decision | STUDYNEXUS_PROGRAMME_DISCOVERY_CLASSIFICATION-18th-Sept-2026.md | Proposal | Strong but unresolved. |
| Rankings under-discovered | Empty Sep ranking file + scattered old mentions | Ranking - Product Discovery Additions 03-09-2026.md | Observation | Unknown; new research required. |

## 59. Discovery graph examples

### A. Why provenance / information quality exists

```text
Evidence: users rely on conflicting official/unofficial sources
→ Finding: reliability/currentness is hard to judge
→ Problem: Trust
→ Opportunity: make authority, freshness and conflicts understandable
→ Proposal: sources + provenance + verification + user reports
→ Decision: preserve provenance; reports enter quality workflow
→ Requirement: candidate/review/canonical separation; MISSING ≠ DELETE
→ Capability: Maintain trusted educational knowledge
```

### B. Why InstitutionOffering / DiscoveryProgramme was proposed

```text
Evidence: institutions use inconsistent programme names; global scale creates huge semantic-classification workload
→ Finding: source-faithful facts and normalized discovery have different purposes
→ Problem: comparison/discovery without falsifying institutional terminology
→ Opportunity: store real offerings first, normalize selectively
→ Proposal: InstitutionOffering + optional DiscoveryProgramme mapping
→ Decision: NOT YET RATIFIED (Sep18 proposal)
→ Open requirement question: must classification remain optional in canonical product?
```

### C. Why ProgrammeInstance returned after rejection

```text
Initial simplification: one Programme seemed sufficient
→ Proposal: Programme Offering/Campus
→ Rejected: considered premature complexity
→ Later evidence: campus + delivery + year + admissions can vary
→ Audit finding: existing model conflates abstract programme with concrete offering
→ Decision reversal: add ProgrammeInstance + Campus; move policy/cutoff scope
→ Discovery retained: concrete offering context matters
```

### D. Why selective SEO exists

```text
Opportunity: users discover education via search engines
→ Risk: dynamic facet combinations create thin/duplicate/crawl-heavy pages
→ Product principle: canonical, useful public surfaces only
→ Architecture/product work: noindex/canonical/sitemap policies
→ Sep18 proposal: explicit selectively published DiscoveryLandingPage
→ Current assessment: selective publication is supported; exact model/criteria still open
```

---

# Part V — Uncertainty and Research

## 60. Research backlog

| Research question | Why it matters | Current internal evidence | Potential research | Confidence needed | Decision affected |
| --- | --- | --- | --- | --- | --- |
| Primary-user discovery interviews | The foundational five problems and persona priority are stakeholder-defined, not directly validated. | Strong internal articulation; no completed interviews found. | Interview recent secondary-school graduates, undergraduates, parents and counsellors about last real education-research decision. | High | Problem prioritization, outcome metrics, first-slice value. |
| Programme/offering language validation | Current model vocabulary is historically overloaded. | Programme → ProgrammeInstance → proposed InstitutionOffering/DiscoveryProgramme. | Test with real Nigerian and 2–3 foreign institution catalogues; model concrete examples and user language. | High | Ubiquitous language and canonical information model. |
| Discovery classification demand | Sep18 optional classification proposal is unratified. | Strong scale reasoning, no user/ops validation. | Measure real dataset naming variance; sample classification coverage needed for high-value search/SEO queries. | High | Whether classification is optional and what gets curated. |
| Trust-signal comprehension | Users need trust, but exact badges/stale warnings are UX hypotheses. | UX doc explicitly calls for research. | Usability tests with source attribution, freshness, conflict and verification patterns. | High | Public presentation and possibly data-quality priorities. |
| Admissions source-authority research | Conflicts are inevitable and one numeric priority may oversimplify context. | Acquisition has source priorities; later policy types multiply. | Map authoritative sources per requirement type, cutoff, catchment, screening and cycle. | High | Reconciliation rules and confidence. |
| Recognition/accreditation research | Legitimacy is core trust input; international semantics are weakly discovered. | Accreditation records exist, little product archaeology on recognition models. | Study NUC/NBTE/NCCE and selected foreign regimes; scope/effective dates/authority semantics. | High | Recognition vocabulary and internationalization. |
| Funding matching validation | Approved model is broad; matching can create false certainty. | Sep03 suggests confidence rather than binary. | Test representative scholarship data + candidate questions; identify criteria that are reliably machine-evaluable. | Medium-high | Matching scope and learner-data needs. |
| Education Services prioritization | Approved discovery is broad and potentially expensive. | Strong semantic model, no roadmap/demand evidence. | Interview users around concrete tasks such as JAMB registration, credential evaluation, IELTS/visa access. | Medium-high | Whether/when to build; initial service categories. |
| Examination timetable validation | Detailed proposal exists without approval. | Sep02 proposed model; exams Phase2. | Validate user frequency, schedule-source reliability, and administration/event model against WAEC/JAMB/NECO + one international exam. | Medium | Approve/reject/refine capability. |
| Career/undergraduate journey rediscovery | Approved/early needs disappeared. | Career pathways, transfers, postgraduate, internships, WF7. | Research whether these remain material jobs and how they rank against admissions/funding. | Medium | Restore, defer or explicitly reject. |
| Ranking/intelligence discovery | Dedicated ranking file is empty. | Only scattered historical mentions. | Start from user problem: when/why users use rankings; source/methodology expectations. | Medium | Whether any ranking capability exists. |
| SEO opportunity validation | Search-first/SEO is strategy-heavy but not backed by corpus traffic data. | Extensive architecture and selective-indexation reasoning. | Keyword/search-console/competitive research after launch data; validate page families and intent. | Medium | Publication prioritization and content investment. |
| Privacy/legal research | Core MVP minimizes personal data; future profiles/study mobility increase exposure. | Little direct legal discovery. | Nigeria NDPA/NDPR and relevant international/privacy requirements before persistent learner profiles or sensitive mobility data. | High when scope activates | Learner profile, retention, consent and security constraints. |

## 61. Adversarial quality-control review

**What did we probably forget?** The corpus itself likely underrepresents non-tertiary/vocational pathways, career decision support, the ongoing undergraduate journey, and real-world accessibility constraints beyond generic mobile/3G guidance. These are not invented requirements; they are areas where original discovery is broader than later focused implementation.

**What may have been accidentally discarded?** Career pathways, transfers/postgraduate/internship needs, and WF7 undergraduate-current-journey work all lose visibility after the first-slice programme-discovery focus without explicit rejection.

**Which historical decision was clearly wrong?** Rejecting Programme Offering/Campus as premature was later overturned when concrete variation became a blocker. This is the clearest evidence that “frozen” does not mean correct.

**Which current requirement has weak evidence?** Several UX specifics and prioritization claims—programme discovery as highest-value journey, result-card fields, status wording, staleness-warning behavior, location-filter granularity—are explicitly hypotheses awaiting user research.

**Which concept changed meaning?** `Programme` changed most dramatically; `MVP`, `status`, `publication`, `source`, `eligibility`, and `organization` also carry context-dependent meanings.

**Which future feature risks leaking into MVP?** Examination scheduling, full scholarships, content/news, accounts/personalization, community, services/access, global programme classification and international support all need explicit delivery decisions rather than being promoted because detailed documents exist.

**Which architecture decision lacks strong product evidence?** Specific module boundaries, generalized Organization/party models, ranking/intelligence boundaries, some community architecture, projection plumbing, repository/event patterns, and package selections are architecture/implementation choices, not discoveries.

**Which duplicated idea was meaningful evolution?** The apparently repetitive V4.x handoffs contain real reversals around search engine/fallback, ProgrammeInstance/Campus, admission-policy scoping, publication and acquisition trust. Near-duplication cannot be treated as irrelevance.

**Which superseded idea retains a valid insight?** The rejected “Programme Offering” idea retained the insight that one abstract programme can have concrete offering contexts; the label/model was rejected, the discovery was later vindicated.

## 62. Required self-critique

### What I am most confident about

The product’s original problem family; Nigeria-first scope; anonymous core MVP; decision-oriented user workflows; source/provenance/information quality importance; non-transactional handoff boundary; the distinction between requirements and automated eligibility; and the need to preserve concrete offering context rather than flatten all programme variation.

### What I am least confident about

Actual user-demand priority among the stated personas/problems; the exact canonical programme/offering vocabulary after Sep18; recognition/accreditation international semantics; the roadmap position of News and Education Services; ranking/intelligence; and whether original career/undergraduate-current-journey needs remain strategically important.

### What the corpus clearly proves

It proves what stakeholders repeatedly decided and what the architecture process learned from contradictions. It proves that ProgrammeInstance/Campus was a reversal, that information quality was an early business capability rather than a late ETL invention, that `MISSING ≠ DELETE` is a deliberate rule, that the first vertical slice is programme-discovery centered, and that several September additions have explicit Approved/Proposed statuses.

### What the corpus strongly suggests

StudyNexus’s durable differentiator is not simply having more education pages; it is connecting heterogeneous education information while explaining authority, freshness and context well enough to support decisions. It also strongly suggests that source-faithful offering information and discovery normalization are different product concerns, although the Sep18 model is not yet ratified.

### What remains ambiguous

Programme/ProgrammeInstance/InstitutionOffering/DiscoveryProgramme; shared Organization identity; detailed recognition model; News/Services roadmap priority; exam timetable approval; selective SEO landing-page criteria; ranking capability; and the status of disappeared career/undergraduate journey needs.

### What appears historically mistaken

Treating the initial domain freeze as sufficiently complete; rejecting concrete offering/campus structure; and allowing architecture documents to imply certainty where UX research was explicitly absent. Some package/technical baselines were also later audited as unreliable, but those are delivery issues rather than product-discovery errors.

### What may have been wrongly rejected

Programme Offering/Campus is confirmed. Other old ideas should not be restored wholesale; the correct action is to recover their underlying problem and reassess it. Career pathways and WF7 are better described as **disappeared/underexplored**, not wrongly rejected, because no explicit rejection was found.

### What requires new research

Direct user discovery, trust-signal comprehension, programme/offering semantics against real heterogeneous data, source authority by information type, accreditation/recognition models, funding matching, service-access priority, examination schedule demand, ranking needs, career/undergraduate journey relevance, SEO intent/data, and future privacy/legal constraints.

### What should not yet become a decision

A final global programme ontology; a universal Organization model; a ranking/intelligence model; a generic eligibility/rules engine; detailed learner profiles; final cross-country qualification/recognition abstractions; or any DDD/LBC physical module map.

---

# Part VI — Inputs for Future DDD and Architecture Work

**This section intentionally stops before physical modules.** It records responsibility and ownership signals only.

## 63. Major business responsibility clusters

| Responsibility cluster | Business purpose |
| --- | --- |
| Maintain institution identity and structure | Keep authoritative institution identity, aliases/relationships, campuses/locations and lifecycle facts coherent. |
| Maintain institution-specific education offerings | Represent what an institution actually offers, with source-faithful naming and concrete context such as campus/delivery where required. |
| Explain admissions | Maintain cycles, policies, requirements, cutoffs, routes, screening and policy geography; distinguish requirements from evaluated eligibility. |
| Maintain recognition/legitimacy information | Represent regulator/authority recognition/accreditation facts with appropriate scope/time/source. |
| Maintain funding opportunities | Represent opportunity cycles, benefits, criteria, dates, providers and official handoff. |
| Maintain examination information | Represent exam products/administrations/schedule events and authoritative changes if/when approved. |
| Manage information quality | Capture evidence, reconcile candidates/conflicts, preserve provenance and control canonical changes. |
| Curate discovery semantics | Create normalized concepts/facets/classifications and meaningful discovery combinations without overwriting source facts. |
| Publish editorial knowledge and updates | Create evergreen explanations and time-sensitive reporting, corrections/retractions and contextual links. |
| Provide education-service access discovery | Connect learner tasks to providers/locations/requirements/authorization and external handoff. |
| Compose public decision experiences | Bring multiple authoritative areas together for search, detail, comparison, trust and next-step guidance. |

## 64. Important ownership boundaries

- One responsibility should authoritatively own each canonical business fact, even when many product pages/search projections consume it.
- Source/evidence ownership and canonical fact ownership are different.
- Derived discovery classification must not silently rewrite source-faithful offering facts.
- Editorial/news ownership must not become ownership of the fact being reported.
- Search representation is derived; presentation composition does not imply canonical ownership.
- Candidate eligibility is derived from candidate facts + requirements; it is not identical to either.

## 65. Major lifecycles

- Institution identity/relationship changes, including rename/merge/split/closure.
- Concrete offering availability/variation and publication/withdrawal.
- Admission cycles/policies/cutoffs and temporal applicability.
- Recognition/accreditation effective periods and changes.
- Funding opportunity cycles/calls and milestones.
- Examination administrations/schedule events/revisions.
- Source capture → candidate → review → canonical change.
- Editorial draft/update/correction/retraction/publication.

## 66. Strong contextual vocabulary differences

| Word | Contexts that differ | Do not globally unify yet because… |
| --- | --- | --- |
| Programme | Institution-specific offering; abstract programme/template; curated discovery concept. | Historical meaning changed and Sep18 proposes explicit separation. |
| Eligibility | Admission fit; scholarship/funding fit; possibly service applicability. | Rules, authorities and consequences differ. |
| Status | Entity lifecycle; publication; verification; import/reconciliation; opportunity state. | Same word hides orthogonal state dimensions. |
| Source | Official information source; editorial/news source; raw acquisition artifact. | Different authority and lifecycle. |
| Publication | Canonical visibility; editorial publication; search indexability; SEO landing-page publication. | Different decisions and owners. |
| Organization | Institution, regulator, exam body, funding provider, service provider, publisher. | Shared fields do not yet prove one business model. |
| Location | Campus location; administrative area; policy geography; service access point. | Meaning depends on responsibility. |

## 67. Cross-responsibility workflows

- External source change → information-quality reconciliation → authoritative fact update → public/search representation refresh.
- User programme search → discovery classification/facets → source-faithful offering facts → admissions/recognition/cost/trust composition.
- News identifies a policy/schedule/funding change → canonical owner updates fact → News reports/contextualizes the change.
- Funding matching → funding criteria + optional learner answers → qualified explanation → provider handoff.
- Education-service discovery → task intent + geography + provider authorization + service requirements → directions/handoff.

## 68. High-coupling risks

- A universal `Programme` model can couple source facts, discovery normalization and admissions into one changing concept.
- A universal `Organization` can become a field-reuse abstraction that hides distinct authority/business roles.
- A generic “Eligibility” engine can wrongly couple admissions, funding and future services before their rules are understood.
- A generic “Status” or “Publication” abstraction can conflate lifecycle, verification, import and public/indexability decisions.
- Information-quality code can accidentally become canonical owner if ingestion directly writes arbitrary business tables without explicit authority.
- Public page/query composition can drag presentation needs into canonical business models if ownership is not explicit.

## 69. Potential bounded-context signals — analytical only

- Source-faithful institution offerings vs StudyNexus discovery concepts use different language, authority and change reasons.
- Admission policy/requirements have distinct temporal and rule semantics from the offering itself.
- Information-quality candidates/evidence/review have a different truth status and workflow from canonical education facts.
- News/editorial content has a publication/correction lifecycle distinct from the business facts it references.
- Practice/assessment, if later built, would have learner-attempt/scoring lifecycles unlike examination-reference information.

These are **signals for the next strategic-design phase**, not declarations of bounded contexts or code modules.

## 70. Concepts that should not be globally unified yet

`Programme`; `Eligibility`; `Organization`; `Status`; `Publication`; `Source`; `Location`; generic `FactVersion`; and generic `Rules`. Each has evidence of contextual meaning or insufficient evidence of one stable universal meaning.

## 71. Concepts that appear naturally cohesive

- Institution identity/structure/relationships as one responsibility family.
- Admission cycles/policies/requirements/cutoffs as one responsibility family, with geographic policy inside its semantic context.
- Funding opportunity/cycle/criteria/benefit/handoff as one product responsibility family.
- Source capture/candidate/conflict/review/provenance as one information-quality process family.
- Discovery normalization/classification/faceting/selective discoverability as one responsibility family distinct from search-engine infrastructure.

“Naturally cohesive” here means the discovery suggests shared business purpose; it does **not** mean one LBC folder.

## 72. Concepts requiring further evidence before strategic design

- Programme vs ProgrammeInstance vs InstitutionOffering vs DiscoveryProgramme.
- Recognition/accreditation scope and authority across jurisdictions.
- Universal actor/organization identity.
- Qualification/award normalization internationally.
- Examination scope and practice/assessment relationship.
- Rankings/institutional intelligence.
- Learner profile/personalization and sensitive personal data.
- Career/undergraduate current-journey responsibilities.

## 73. Architecture-relevant unresolved questions

1. Which programme/offering vocabulary becomes canonical after testing representative data?
2. Is DiscoveryProgramme classification truly optional for all canonical storage/publication, and if so what user surfaces require classification?
3. Does recognition require independent business decisions/lifecycles or remain informational attributes tied to institutions/offerings?
4. Do regulators/providers/exam bodies/services share one canonical actor identity or only cross-reference identities?
5. Which current/future responsibilities require temporal histories beyond source/provenance audit?
6. What public trust contract must remain consistent across institution, admissions, funding, exams, services and news?
7. Which approved September capabilities are actually next in product priority?

---

# Appendix A — Re-tested historical principles

| Historical principle | Reconstructed status | Assessment |
| --- | --- | --- |
| Search-first, information-rich education discovery | DISCOVERY / CURRENT PRODUCT DIRECTION | Strong product-experience decision built on discoverability problem; “search-first” itself needs usage validation. |
| Nigeria-first | CURRENT DECISION / CONSTRAINT | Explicit day-one decision. |
| Not an enrolment/transaction platform | CURRENT PRODUCT BOUNDARY | Repeated workflow and later capability non-goals. |
| PostgreSQL canonical source of truth | TECHNICAL CONSTRAINT | Current architecture, not product discovery. |
| Typesense as projection/serving layer | TECHNICAL CONSTRAINT | Current search architecture; rebuildable. |
| External acquisition separated from canonical production | TECHNICAL/TRUST CONSTRAINT | Strong current acquisition boundary. |
| Immutable/replayable captures | TECHNICAL/TRUST REQUIREMENT | Supports evidence/audit; current principle. |
| Human-in-the-loop information quality | CURRENT REQUIREMENT | Strong business + acquisition evidence. |
| MISSING ≠ DELETE | CURRENT REQUIREMENT | Explicit hard rule. |
| AI suggestions rather than silent canonical mutation | CURRENT REQUIREMENT | Approved later evidence. |
| Provenance/history | CURRENT REQUIREMENT | Foundational capability; history is contextual. |
| Institution identity distinct from arbitrary relationships | CURRENT DISCOVERY | Early domain work and relationship semantics support. |
| InstitutionOffering distinct from DiscoveryProgramme | PROPOSAL / STRONG HYPOTHESIS | Only Sep18 unique proposal; not yet ratified. |
| Optional discovery classification | PROPOSAL | Strong scale rationale, not yet current decision. |
| Selective SEO publication | CURRENT PRINCIPLE / exact model PROPOSED | Supported earlier and strengthened Sep18. |
| No unnecessary public accounts/profiles in MVP | CURRENT MVP DECISION | Explicit. |
| Deferred admission-requirements automation | DEFERRED DECISION | Explicit progressive approach. |
| Future international support | FUTURE DIRECTION | Explicit; current scope Nigeria only. |
| Modular monolith | TECHNICAL/ARCHITECTURAL CONSTRAINT | Not product discovery. |
| Laravel Beyond CRUD rather than microservices | TECHNICAL/ARCHITECTURAL CONSTRAINT | Not product discovery; should not dictate problem model. |

# Appendix B — Companion artifacts

- `StudyNexus-Corpus-Inventory.csv` — every one of the 555 files with path, size/word count, SHA-256, exact-duplicate membership, classification, inclusion/exclusion and reason, near-duplicate cluster.
- `StudyNexus-Near-Duplicate-Clusters.csv` — heuristic near-duplicate candidates among byte-unique files.
- `StudyNexus-Claim-Evidence-Ledger.csv` — 70 major claims with provenance, authority, historical status, contradictions, assessment and confidence.
- `StudyNexus-Historical-Decision-Ledger.csv` — 20 major historical decisions/reversals in machine-readable form.

# Final stopping-condition assessment

| Stopping condition | Result |
| --- | --- |
| Corpus comprehensively considered | YES — 555 files inventoried; duplicates/near-duplicates accounted; 186 byte-unique documents identified; evidence-bearing representatives synthesized. |
| Major discoveries reconstructed | YES — identity, users, problems, workflows, trust, programmes, admissions, funding, exams, content, geography, services, search/SEO. |
| Historical decisions traceable | YES — decision and claim ledgers plus source paths. |
| Contradictions exposed | YES — material contradictions/reversals preserved rather than silently resolved. |
| Rejected/superseded ideas evaluated | YES — including Programme Offering/Campus reversal. |
| Disappeared ideas identified | YES — career pathways, WF7/current-journey, transfers/postgrad/internships, rankings. |
| Current product understanding explicit | YES — Part III. |
| MVP/current/future/deferred separated | YES — including three distinct uses of “MVP”. |
| Business responsibilities identifiable | YES — Part VI without physical modules. |
| Major ownership signals visible | YES — canonical/evidence/derived/presentation separated. |
| Remaining uncertainty explicit | YES — open-question matrix/self-critique. |
| Research gaps documented | YES — research backlog. |

> **Handoff:** This reconstruction is ready to serve as the evidence foundation for a separate **StudyNexus Ubiquitous Language** phase. It should **not** yet be converted directly into `src/Domain/*` folders. The next work should resolve the high-impact vocabulary/open questions first, especially the programme/offering model, then perform strategic DDD analysis from the reconstructed business responsibilities.