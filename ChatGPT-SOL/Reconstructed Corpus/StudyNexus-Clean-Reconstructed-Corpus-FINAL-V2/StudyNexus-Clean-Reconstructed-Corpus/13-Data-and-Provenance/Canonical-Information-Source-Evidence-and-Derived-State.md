---
corpus_id: COR-DATA-001
document_kind: AUTHORITY_OVERLAY
title: "Canonical Information, Source Evidence and Derived State"
category: data-and-provenance
subcategory: information-states
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
  - R015
  - R018
  - R019
related_open_questions:
  - NONE
---

# Canonical Information, Source Evidence and Derived State

**Purpose.** Consolidates SOURCE/CANDIDATE/CANONICAL/DERIVED reasoning and source-authority boundaries.

## Authority and current status

**Document kind — `AUTHORITY_OVERLAY`.** This is a current-authority overlay/navigation dossier derived from the accepted Product Discovery and its final supporting artifacts. It is not itself a source-grounded historical reconstruction.

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP001 — Trusted Education Information Management**: Acquire, reconcile, maintain, explain and present trustworthy education information with provenance and controlled correction. _Scope: MVP — defined; strategic status: IN._
- **CAP022 — Community/User-Contributed Information Input**: Accept user reports or contributions as evidence/candidate input to information-quality processes. _Scope: MVP — defined; strategic status: IN._
- **CAP033 — Automated Eligibility Evaluation**: Deterministically evaluate a candidate profile against structured admission/funding rules and produce a machine-derived eligibility outcome. _Scope: CURRENTLY DEFERRED — evidence required; strategic status: OUT_CURRENTLY_DEFERRED._

### Related canonical product concepts

- **CON011 — Admission Requirement**: A published condition for admission. It is not itself a candidate-specific eligibility result.
- **CON018 — Post-UTME**: Nigeria-specific institution admission screening/assessment following or alongside national admission processes; not merely “news” and not automatically a universal examination concept.
- **CON032 — Education Service Point**: A location, provider point, channel or official destination through which an education service can be accessed or completed.
- **CON033 — Source**: An identifiable origin from which StudyNexus receives information or evidence, with provenance and authority characteristics that may differ by fact type and context.
- **CON034 — Evidence**: Recorded material or observations used to support, challenge or explain a candidate or canonical StudyNexus fact.
- **CON035 — Candidate Information / Candidate Change**: Sourced or extracted information that may imply a new fact or change but has not yet been accepted into StudyNexus canonical information.
- **CON037 — Derived Representation**: A representation calculated, normalized, classified or projected from canonical and/or curated StudyNexus information for discovery, search, comparison, publication or presentation.
- **CON038 — Provenance**: Traceable information about where a StudyNexus fact, candidate, interpretation or publication came from and how it reached its current state.
- **CON056 — Ranking / Institutional Intelligence**: An unresolved possible product concept involving comparative institutional metrics, imported rankings, normalized observations or StudyNexus-derived intelligence. Product-capability membership is not established.

### Relevant current resolutions

- **R015**: Requirements and self-assessment are MVP. Automated deterministic eligibility evaluation remains currently deferred until reliable structured rules and candidate data exist. Admission and funding eligibility are contextual, not one global rules concept.
- **R018**: Keep source authority/freshness/conflict as canonical product concerns. Define category-specific precedence during UL/business-rule work rather than inventing a single global hierarchy now.
- **R019**: Canonicalize the information users may need—source/authority, freshness, verification state, historical/conflict context where material—not a specific badge/color/UI implementation.

## Important boundaries

- Source evidence ≠ canonical StudyNexus information.
- Derived representation ≠ source authority.

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
