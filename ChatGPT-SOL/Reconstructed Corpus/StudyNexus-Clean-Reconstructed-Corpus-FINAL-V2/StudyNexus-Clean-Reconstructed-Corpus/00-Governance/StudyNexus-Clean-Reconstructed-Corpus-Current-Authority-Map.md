# StudyNexus Current Authority Map

## Governing statement

> **The accepted Product Discovery is the current authority for product meaning.**

The authoritative file is `StudyNexus-Canonical-Product-Discovery-FINAL.md`, supported for their specific purposes by the final Product Concept Register, Capability Scope, Resolution Ledger, Traceability Map and Handoff README.

This reconstructed corpus does not replace that six-file handoff.

## How the clean corpus relates to current authority

| Working-corpus material | Role | Can it override accepted Product Discovery? |
|---|---|---|
| `COR-*` `AUTHORITY_OVERLAY` dossiers | Current navigation/support derived from accepted Product Discovery/final artifacts; no direct historical `SRC-*` lineage | No |
| `COR-*` `SOURCE_RECONSTRUCTION` dossiers | Source-grounded historical/supporting evidence reconstructed from one or more `SRC-*` sources | No |
| Current Product Discovery resolutions referenced as `R###` | Current normalization/decision authority as defined by final ledger | Part of Tier 1 handoff |
| Historical business/product sources | Evolution and provenance | No |
| Historical DDD/domain models | Design history | No |
| Historical architecture/implementation sources | Technical history/proposals | No |
| Acquisition/data pipeline sources | Operational/technical history plus supporting trust-boundary evidence | No for product meaning |
| Open Questions Register | Explicit unresolved matters | No; it records uncertainty |
| Decision Index historical ADR/HDEC entries | Historical decisions | No unless separately re-adopted by a current authority |

## Current supporting evidence

The working corpus supplies two distinct forms of support: `AUTHORITY_OVERLAY` dossiers provide current navigation grounded in the accepted Product Discovery/final artifacts, while `SOURCE_RECONSTRUCTION` dossiers preserve source-grounded evidence and evolution from the historical archive.

## Detailed historical reasoning

The historical/evolution dossiers explain how terminology, scope, product experience, domain modelling, architecture and implementation proposals changed over time. They are designed to prevent old documents from being mistaken for present authority.

## Technical material

All historical Laravel, DDD, aggregate, schema, Typesense, RBAC, infrastructure, queue, caching and implementation material is explicitly technical history unless a separate current technical authority is established later. This task makes no new architecture decision.

## Current unresolved questions

See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Open-Questions-Register.csv` and `../17-Decisions-and-Open-Questions/Open-Questions-and-Unresolved-Matters.md`. At minimum, Rankings / Institutional Intelligence, Full Social / Community Product beyond information-quality inputs, and the Organization vocabulary/modeling question remain unresolved.

## Product-scope interpretation rule

Old Phase/Future/Later/Deferred labels are historical sequencing evidence. They do not, by themselves, remove an item from current MVP. Current scope follows the accepted Product Discovery and its MVP-default rule.

## Integrity hashes for final handoff artifacts

- `StudyNexus-Canonical-Capability-Scope-FINAL.csv` — `41abf3957346b8a3ff13b944f05e77fec444c762fcde2812fc22b8b320d0d79b`
- `StudyNexus-Canonical-Product-Concept-Register-FINAL.csv` — `d7778e7fc57e267dcd64b700fd1fccdaf760134d01183849cc6b0d9ce67c1fe4`
- `StudyNexus-Canonical-Product-Discovery-FINAL.md` — `b4f1783e348be4cecd3eda71d87286e80097f5aa26af2916df99d3c0f4380c95`
- `StudyNexus-Product-Discovery-Handoff-README.md` — `c293650edb22957065d761c656b4d8ae24a4afbcac366c3cd82253b02057914c`
- `StudyNexus-Product-Discovery-Resolution-Ledger-FINAL.csv` — `d8f4eb6a741ea5703a98dc9852ad0fd583c9bbb9487f8247b0750a6e90995a0d`
- `StudyNexus-Product-Discovery-Traceability-Map.csv` — `242530482a1b24f8fbc09b7e8484fb727de8c0da67f6031a5497ff8e539ba943`
