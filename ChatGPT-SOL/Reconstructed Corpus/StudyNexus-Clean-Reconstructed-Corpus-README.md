# StudyNexus Clean Reconstructed Corpus

> This package is the reconstructed and consolidated StudyNexus working corpus. It is derived from the complete historical StudyNexus corpus. The original corpus remains the immutable historical archive. The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` remains authoritative for current Product Discovery.

## What this corpus is

This is the subject-oriented working knowledge base reconstructed from the 555-file historical archive. It removes exact-copy noise from active use, groups evolving/near-duplicate evidence, separates current support from historical technical proposals, and preserves source-level provenance through stable IDs and ledgers.

It is **not** a replacement for the original archive, a second Product Discovery, a new DDD model, or a new technical architecture.

## Where to start

1. Read `StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md`.
2. Use `StudyNexus-Clean-Reconstructed-Corpus-TOPIC-MAP.md` to find the subject you need.
3. Open the relevant `COR-*` dossier.
4. Follow `SRC-*` references through the Source Disposition Ledger when historical proof is required.
5. For current product meaning, consult the accepted final Product Discovery package rather than inferring current scope from historical documents.

## Source hierarchy

1. **Tier 1 — accepted Product Discovery handoff.** Current product authority.
2. **Tier 2 — current supporting decisions/material.** Useful support, but subordinate to Tier 1 for product meaning.
3. **Tier 3 — historical sources.** Evidence of evolution; status varies.
4. **Tier 4 — archive-only/package material.** Retained for lineage and forensic completeness.

## Status vocabulary

The standardized statuses are defined in `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Status-Register.csv`: `CURRENT`, `CURRENT_SUPPORTING`, `HISTORICAL`, `SUPERSEDED`, `REJECTED`, `OPEN_QUESTION`, `EXPLORATORY`, `ARCHIVE_ONLY`, and `DUPLICATE`.

## ID scheme

- `COR-*`: reconstructed subject document.
- `SRC-*`: original archive source path.
- `EDG-*`: exact-duplicate content group.
- `NDG-*`: near-duplicate/evolving-content group.
- `OQ-*`: current unresolved question tracked by this corpus.
- `ASM-*`: explicit assumption register.
- `R###`: accepted Product Discovery resolution ID, owned by the final handoff.
- `ADR-*` / `HDEC-*`: historical technical/business decision references.

## Directory structure

The active working corpus is organized by subject, not by V4.2/V4.3/V4.4/V4.5/V4.6 package chronology. Historical package chronology is still recoverable from source paths in the ledgers.

## Provenance model

Every original file has exactly one `SRC-*` row in the Source Disposition Ledger. Every reconstructed dossier identifies its primary source IDs and includes representative source paths/hashes. Exact duplicate copies map to a representative source rather than being treated as independent evidence.

## Exact duplicates

Exact SHA-256 duplicates remain in the immutable archive and ledger. Only a canonical representative participates in subject reconstruction. Duplicate paths use disposition `EXACT_DUPLICATE_OF` and identify the representative `SRC-*`.

## Near-duplicates

Near-duplicate detection is evidence assistance, not an automatic merge rule. High-similarity unique contents are grouped in the Near-Duplicate Register. The reconstructed subject dossier retains meaningful evolution instead of assuming textual similarity means semantic identity.

## Contradictions and supersession

Historical disagreement is not silently normalized away. The working dossiers state that current product conflicts are governed by the accepted Product Discovery; technical/architectural conflicts remain historical unless a current authority exists. Genuine unresolved product matters are kept in the Open Questions Register.

## MVP-default governance rule

The working corpus preserves the adopted rule: **Everything currently under consideration is treated as current MVP/current product scope by default unless evidence establishes that it is rejected, explicitly out of product scope, technically or legally impossible under known constraints, contradicted by a stronger current decision, no longer relevant, or otherwise genuinely not part of the product.**

Historical labels such as Phase 2, Phase 3, Future, Later, Deferred, or first-slice omission are not automatically scope exclusions.

## Important product boundaries that must not be silently changed

- Institution Offering ≠ Discovery Programme ≠ ProgrammeInstance.
- Bare “Programme” is overloaded and unsafe unqualified.
- Accreditation ≠ Qualification Recognition ≠ Institution Approval/Recognized Status.
- Admission Requirement ≠ Eligibility.
- Self-Assessment ≠ authoritative admission decision.
- Search ≠ Discovery.
- Publication/indexability ≠ canonical product truth.
- Search infrastructure ≠ product meaning.
- News ≠ durable canonical fact.
- Source evidence ≠ canonical StudyNexus information.
- User contribution ≠ canonical truth.
- Derived representation ≠ source authority.
- MISSING ≠ DELETE.
- Organization remains unresolved rather than universal.
- Rankings / Institutional Intelligence remains a product-membership question.
- Internationalization Semantics remains a cross-cutting principle/constraint.

## How to add new material

1. Preserve the new source unchanged in the designated source archive/repository.
2. Assign a new `SRC-*` ID and compute SHA-256.
3. Classify status, authority, subject and disposition.
4. Update the appropriate `COR-*` dossier rather than creating chronology-driven duplicates when the subject already exists.
5. Record reconstruction changes in the Reconstruction Ledger.
6. If a genuine new decision/open question/assumption is introduced, update the corresponding register.
7. Do not silently alter accepted Product Discovery meaning; product changes belong in the Product Discovery governance process first.
8. Re-run corpus QA for duplicate accounting, links, IDs and orphans.

## Using this corpus with AI agents

Give the agent the Current Authority Map and the relevant subject dossiers, not the entire historical archive by default. Tell it that `COR-*` documents are reconstructed navigation/support artifacts and that the accepted Product Discovery handoff is the authority for current product meaning. Historical `SRC-*` evidence should be consulted when provenance, evolution or a disputed statement matters.

## Original archive

The original 555-file corpus is intentionally **not** embedded into this ZIP. It remains separate and immutable. The Source Disposition Ledger provides complete path/hash accounting back to that archive.
