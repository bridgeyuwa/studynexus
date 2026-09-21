---
corpus_id: COR-DOM-003
document_kind: AUTHORITY_OVERLAY
title: "Regulatory Status, Accreditation and Qualification Recognition"
category: domain-and-concepts
subcategory: regulatory-semantics
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
  - R003
  - R016
related_open_questions:
  - NONE
---

# Regulatory Status, Accreditation and Qualification Recognition

**Purpose.** Preserves distinct regulatory/trust concepts rather than a universal Recognition abstraction.

## Authority and current status

**Document kind — `AUTHORITY_OVERLAY`.** This is a current-authority overlay/navigation dossier derived from the accepted Product Discovery and its final supporting artifacts. It is not itself a source-grounded historical reconstruction.

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP003 — Institution Information**: Present structured, trustworthy institution identity, location, status and other decision-relevant information. _Scope: MVP — defined; strategic status: IN._
- **CAP026 — Accreditation / Approval / Qualification-Recognition Information**: Represent and explain externally granted regulatory/recognition statuses using the correct contextual meaning rather than a universal Recognition label. _Scope: MVP — boundary requires refinement; strategic status: IN._

### Related canonical product concepts

- **CON003 — Campus**: A named institutional location/branch context where real offering, admission, service or accreditation facts may vary.
- **CON009 — Qualification**: A credential/award context associated with study, distinct from subject/programme classification; terminology and external recognition vary by authority/jurisdiction.
- **CON021 — Accreditation**: A time-bounded decision or status granted by a competent authority about the quality/compliance of an institution, offering, programme, campus or other scoped educational object, according to the authority's jurisdiction and scheme.
- **CON022 — Qualification Recognition**: An external authority's judgment about whether a qualification, award or credential is recognized or accepted for a stated purpose or jurisdiction.
- **CON023 — Institution Approval / Recognized Status**: An externally granted status indicating whether an institution is approved, licensed, recognized, listed or otherwise valid under a competent authority's rules.
- **CON024 — Education Authority / Regulator**: An external body whose authoritative decisions, registers or rules establish educational status, approval, accreditation, admission policy context or other regulated facts.
- **CON036 — Canonical StudyNexus Information**: The current StudyNexus representation accepted for product use after applying the relevant evidence, normalization and review rules; it remains a representation of external reality, not ownership of the external authority's underlying fact.
- **CON058 — Organization (potential shared abstraction)**: A possible umbrella abstraction for non-person actors such as regulators, exam bodies, scholarship providers, publishers or service providers. It is not an accepted universal StudyNexus product concept.

### Relevant current resolutions

- **R003**: Do not canonize universal Recognition. Use specific product meanings: Accreditation; Qualification Recognition; Institution Approval/Recognized Status; Regulator/Awarding Authority roles as applicable.
- **R016**: Do not canonize a universal Organization product concept. Use concrete actor roles and leave shared identity modeling to later evidence/DDD if a real cross-role business responsibility emerges.

## Important boundaries

- Accreditation ≠ Qualification Recognition ≠ Institution Approval/Recognized Status.

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
