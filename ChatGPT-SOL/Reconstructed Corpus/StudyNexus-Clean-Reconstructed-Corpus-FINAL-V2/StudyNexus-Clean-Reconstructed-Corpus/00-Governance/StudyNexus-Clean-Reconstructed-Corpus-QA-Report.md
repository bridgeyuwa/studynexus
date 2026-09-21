# StudyNexus Clean Reconstructed Corpus — QA Report

## Result

The surgical provenance/classification correction passes all required QA gates. The original archive remains separate and immutable; the accepted Product Discovery remains unchanged. Active `COR-*` material is now explicitly classified as either `SOURCE_RECONSTRUCTION` or `AUTHORITY_OVERLAY`.

## Verified archive inventory

- Original source files: **555**
- File type: **555 Markdown files**
- Unique SHA-256 contents: **186**
- Exact duplicate copies beyond canonical representatives: **369**
- Exact-duplicate groups: **83**
- Empty files: **1**
- Unreadable files: **0**
- Near-duplicate/evolving-content groups detected: **25**
- Unique documents participating in those groups: **82**
- High-similarity pair edges used to form groups: **104**

Near-duplicate detection used TF-IDF word/bigram cosine similarity plus title/filename semantic checks. It is deliberately conservative and is used for grouping/evolution assistance, not automatic semantic equivalence.

## Corrected active-corpus metrics

- Active subject dossiers: **43**
- Source-grounded `SOURCE_RECONSTRUCTION` dossiers: **28**
- Current `AUTHORITY_OVERLAY` dossiers: **15**
- Current-supporting dossiers: **29**
- Historical dossiers: **12**
- Open-question dossiers: **1**
- Archive-only dossiers: **1**
- Source-less historical dossiers: **0**
- Archive-only original source rows: **33**
- Decision Index records: **78**
- Current open questions: **3**
- Source-to-dossier mapping coverage: **100.0%**
- Broken internal references detected: **0**
- Orphan original sources: **0**
- Orphan active subject dossiers: **0**

`555/555 = 100%` source mapping means every original source row has a documented disposition and an active dossier destination. It does **not** mean every active dossier is directly reconstructed from historical sources. `AUTHORITY_OVERLAY` dossiers intentionally have no `SRC-*` lineage.

## Quality gates

| Gate | Result | Evidence |
|---|---|---|
| 1 — Source accounting | PASS | 555/555 source rows in Source Disposition Ledger |
| 2 — Duplicate accounting | PASS | SHA-256 exact groups + Near-Duplicate Register |
| 3 — Provenance | PASS | Every `SOURCE_RECONSTRUCTION` dossier has complete `SRC-*` lineage and source hashes. Every `AUTHORITY_OVERLAY` explicitly identifies its accepted current authority sources rather than inventing historical `SRC-*` lineage. |
| 4 — Status | PASS | Standardized Status Register + document front matter |
| 5 — Contradictions | PASS | Historical differences are not promoted over accepted Product Discovery; unresolved matters remain explicit |
| 6 — No hallucination | PASS | Unknown rationale is marked unknown/points to source; current product claims come from accepted final registers |
| 7 — Product authority | PASS | Authority Map and every relevant dossier preserve accepted Product Discovery as Tier 1 |
| 8 — Historical preservation | PASS | Original archive unchanged; every path/hash/disposition retained |
| 9 — Navigation | PASS | Subject taxonomy, Topic Map and Master Index |
| 10 — Internal consistency | PASS | Broken reference scan = 0 |
| 11 — No orphan active dossiers | PASS | Orphans = 0 |
| 12 — No orphan source files | PASS | Orphans = 0 |
| 13 — Machine usability | PASS | Stable IDs, CSV registers, YAML front matter |
| 14 — Human usability | PASS | Subject dossiers with authority/current/evolution/lineage sections |
| 15 — Maintenance | PASS | README defines update procedure and invariants |

## Surgical integrity correction

- The 15 zero-source `CURRENT_SUPPORTING` dossiers are retained as `AUTHORITY_OVERLAY` documents with explicit final-handoff authority sources.
- `COR-TECH-005` was removed from the active set because infrastructure/queue/cache/deployment material is already source-grounded in existing technical/audit dossiers; the empty historical dossier added no independent provenance.
- `COR-GOV-002` was removed from the active set because privacy/security/legal/compliance evidence is already distributed across source-grounded technical, data, acquisition, governance and audit dossiers; the empty historical dossier added no independent provenance.
- No source row mapped to either removed dossier, so the 555-row Source Disposition Ledger required no reassignment.
- A full scan confirms there is no remaining `HISTORICAL` dossier with `source_count = 0`.

## Known genuine unresolved areas

1. **OQ-001 — Rankings / Institutional Intelligence product membership.**
2. **OQ-002 — Full Social / Community Product beyond information-quality contributions.**
3. **OQ-003 — Organization vocabulary/modeling question.**

These uncertainties do not invalidate the corpus and were not guessed away.

## Empty source handling

`Ranking - Product Discovery Additions 03-09-2026.md` is zero bytes. The Source Disposition Ledger records it as an empty `ARCHIVE_ONLY` source. No content has been invented for it.

## Product authority conclusion

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` remains authoritative for current Product Discovery. Historical product, domain, DDD, architecture, schema and implementation material in this corpus cannot silently override it.

## QA decision

**CORPUS INTEGRITY CORRECTION ACCEPTED**
