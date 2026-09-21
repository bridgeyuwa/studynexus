---
corpus_id: COR-PROD-002
document_kind: AUTHORITY_OVERLAY
title: "Product Capabilities, Boundaries and Exclusions"
category: product
subcategory: capabilities
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 0
authority_sources:
  - StudyNexus-Canonical-Product-Discovery-FINAL.md
  - StudyNexus-Canonical-Product-Concept-Register-FINAL.csv
  - StudyNexus-Canonical-Capability-Scope-FINAL.csv
  - StudyNexus-Product-Discovery-Resolution-Ledger-FINAL.csv
  - StudyNexus-Product-Discovery-Traceability-Map.csv
  - StudyNexus-Product-Discovery-Handoff-README.md
sources:
  - NONE
related_resolutions:
  - R004
  - R009
  - R010
  - R012
  - R015
  - R020
related_open_questions:
  - OQ-001
  - OQ-002
  - OQ-003
---

# Product Capabilities, Boundaries and Exclusions

**Purpose.** Consolidates capability/boundary evidence and points to the accepted capability register for current authority.

## Authority and current status

**Document kind — `AUTHORITY_OVERLAY`.** This is a current-authority overlay/navigation dossier derived from the accepted Product Discovery and its final supporting artifacts. It is not itself a source-grounded historical reconstruction.

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP014 — Education Services & Access**: Help users discover, understand and reach education-related services/tasks and authoritative access points. _Scope: MVP — defined; strategic status: IN._
- **CAP023 — Public Accounts / Persistent Identity**: Provide persistent user identity only where it supports valuable persistent/personal capabilities while preserving anonymous core discovery/search/comparison. _Scope: MVP — boundary requires refinement; strategic status: IN._
- **CAP029 — Institution / Provider Self-Service**: Direct self-service tools for institutions/providers to maintain their presence or workflows. _Scope: EXCLUDED; strategic status: OUT._
- **CAP030 — Public API / Developer Platform**: Public developer access to StudyNexus data/capabilities. _Scope: EXCLUDED; strategic status: OUT._

### Related canonical product concepts

- **CON031 — Education Service**: An education-related service or task a user may need to understand, locate or access, where StudyNexus primarily provides information, guidance and authoritative handoff rather than executing the external service.
- **CON053 — Public Account / Persistent Identity**: A persistent user identity that can support saved state or personal capabilities. It is not required for anonymous core discovery/search/comparison, but under the current MVP-default rule remains in MVP consideration.
- **CON054 — Personalization**: Adaptation of information, recommendations, saved state or guidance to a user's declared or persistent context without making personalization a prerequisite for core anonymous discovery.
- **CON056 — Ranking / Institutional Intelligence**: An unresolved possible product concept involving comparative institutional metrics, imported rankings, normalized observations or StudyNexus-derived intelligence. Product-capability membership is not established.

### Relevant current resolutions

- **R004**: No. Historical phase labels are delivery history. Current MVP membership is determined independently under the current MVP-default rule; underspecification and first-slice omission do not remove a capability.
- **R009**: Genuinely unresolved whether ranking/institutional intelligence is a StudyNexus product capability. Do not infer inclusion or exclusion from architecture.
- **R010**: Examination information/schedules are MVP/current scope. The exact capability boundary and schedule vocabulary are underspecified/proposed. Practice/attempts/scoring/progress are a distinct current deferral.
- **R012**: Yes, they remain in current MVP consideration under the present scope rule because no current explicit exclusion removes them. However, anonymous core discovery must remain usable without an account; persistent identity, personalization and notification minimums are underspecified and need only be introduced where persistent user value requires them.
- **R015**: Requirements and self-assessment are MVP. Automated deterministic eligibility evaluation remains currently deferred until reliable structured rules and candidate data exist. Admission and funding eligibility are contextual, not one global rules concept.
- **R020**: After this canonicalization package, Product Discovery is READY WITH EXPLICIT ASSUMPTIONS for Ubiquitous Language. No true blocker remains; programme/offering distinction remains explicit and reversible; several MVP capabilities remain underspecified but bounded and traceable.

## Historical evolution and source evidence

This dossier has no direct `SRC-*` lineage by design. Its current grounding comes from the accepted Product Discovery and final supporting artifacts listed in `authority_sources`; related source-grounded dossiers provide historical evidence where applicable.

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
