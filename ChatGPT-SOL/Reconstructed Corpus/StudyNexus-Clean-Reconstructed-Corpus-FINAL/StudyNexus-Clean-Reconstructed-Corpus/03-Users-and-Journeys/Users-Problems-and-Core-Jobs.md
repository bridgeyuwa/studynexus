---
corpus_id: COR-JOURNEY-001
title: "Users, Problems and Core Jobs"
category: users-and-journeys
subcategory: user-model
status: CURRENT_SUPPORTING
authority: SUPPORTING
temporal_scope: CURRENT
source_count: 4
sources:
  - SRC-0488
  - SRC-0490
  - SRC-0513
  - SRC-0183
related_resolutions:
  - R012
related_open_questions:
  - NONE
---

# Users, Problems and Core Jobs

**Purpose.** Consolidates historical user/problem/workflow evidence under the accepted current user model.

## Authority and current status

The accepted `StudyNexus-Canonical-Product-Discovery-FINAL.md` and its final supporting registers remain authoritative for current product meaning. This dossier is a reconstructed working-corpus view: it consolidates supporting evidence, historical evolution, and subject navigation without creating a competing product baseline.

## Current understanding from the accepted product baseline

### Related current capabilities

- **CAP023 — Public Accounts / Persistent Identity**: Provide persistent user identity only where it supports valuable persistent/personal capabilities while preserving anonymous core discovery/search/comparison. _Scope: MVP — boundary requires refinement; strategic status: IN._
- **CAP024 — Personalization**: Adapt information/guidance to user context or persistent preferences without making personalization mandatory for core use. _Scope: MVP — underspecified; strategic status: IN._
- **CAP029 — Institution / Provider Self-Service**: Direct self-service tools for institutions/providers to maintain their presence or workflows. _Scope: EXCLUDED; strategic status: OUT._
- **CAP031 — External Transaction Execution**: Executing enrolment/admission applications, exam registration/payment/results/certification, scholarship award/disbursement, visa/government processing or provider transactions. _Scope: EXCLUDED; strategic status: OUT._

### Related canonical product concepts

- **CON053 — Public Account / Persistent Identity**: A persistent user identity that can support saved state or personal capabilities. It is not required for anonymous core discovery/search/comparison, but under the current MVP-default rule remains in MVP consideration.
- **CON054 — Personalization**: Adaptation of information, recommendations, saved state or guidance to a user's declared or persistent context without making personalization a prerequisite for core anonymous discovery.

### Relevant current resolutions

- **R012**: Yes, they remain in current MVP consideration under the present scope rule because no current explicit exclusion removes them. However, anonymous core discovery must remain usable without an account; persistent identity, personalization and notification minimums are underspecified and need only be introduced where persistent user value requires them.

## Historical evolution and source evidence

### SRC-0488 — StudyNexus — Business Workflows

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/06-business-workflows.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Workflows describe how users achieve business goals by exercising business capabilities. They are derived from approved business discovery, not invented independently. Variations within a workflow remain within the same workflow unless they introduce fundamentally different business goals. Workflows may be executed in any order; there is Key sections: Workflow Classification; Canonical Business Workflows; WF1: Explore Educational Opportunities; WF2: Evaluate Educational Opportunities; WF3: Compare Educational Opportunities; WF4: Assess Eligibility.

### SRC-0490 — StudyNexus — Business Traceability Matrix

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/08-traceability-matrix.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NONE
- **Contribution:** Purpose: Every major artifact produced during Business Discovery is traced back to approved decisions. Any artifact that cannot be fully traced is explicitly identified as an unsupported assumption. Chain integrity: Complete. Every primary user definition traces directly to Topic 0 (Identity) and Topic 1 (Primary Users) approved decisions Key sections: Traceability Chains; 1. Identity → Primary Users; 2. Primary Users → Problem Space; 3. Problem Space → Business Capabilities; 4. Business Capabilities → Business Workflows; 5. Business Workflows → Candidate Business Concepts.

### SRC-0513 — StudyNexus — Business (Canonical)

- **Historical path:** `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/01-business.md`
- **Period/version:** V4.6 period
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-006
- **Contribution:** Technology baseline: Laravel ^13.0, PHP 8.5, Filament 5, Livewire 4. Business Discovery Status: FROZEN (2026-08-07). Source documents: 01-business-overview.md, 02-glossary.md, 04-open-questions.md, 06-business-workflows.md, 07-business-discovery-closure.md. Identity. StudyNexus is a comprehensive education knowledge platform that aggregat Key sections: 1. Vision and Identity; 2. Problem Space; 2.1 Fragmentation; 2.2 Trust; 2.3 Discoverability; 2.4 Comparison.

### SRC-0183 — StudyNexus — Business (Canonical)

- **Historical path:** `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/01-business.md`
- **Period/version:** 2026-08-07
- **Status in working corpus:** HISTORICAL
- **Near-duplicate family:** NDG-006
- **Contribution:** Technology baseline: Laravel ^13.0, PHP 8.5, Filament 5, Livewire 4. Business Discovery Status: FROZEN (2026-08-07). Source documents: 01-business-overview.md, 02-glossary.md, 04-open-questions.md, 06-business-workflows.md, 07-business-discovery-closure.md. Identity. StudyNexus is a comprehensive education knowledge platform that aggregat Key sections: 1. Vision and Identity; 2. Problem Space; 2.1 Fragmentation; 2.2 Trust; 2.3 Discoverability; 2.4 Comparison.

## Contradictions, supersession and interpretation

Where historical scope labels such as Phase 2, Phase 3, Future, Later or Deferred occur, they are treated as delivery history and **not** as automatic current-MVP exclusions. Current product meaning follows the accepted Product Discovery and the adopted MVP-default governance rule.

## Source lineage

| Source ID | Representative historical path | SHA-256 | Exact copies | Near-duplicate group |
|---|---|---|---:|---|
| SRC-0488 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/06-business-workflows.md` | `717c602d5b612f3193ab87f473b026b69872a298f7294d71cf1d3f4ddea57f3d` | 8 |  |
| SRC-0490 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/archive/08-traceability-matrix.md` | `fbbb93de3459a14257b4a82286e6f71d5c42a2f50765e6da0a4d594e795d5530` | 7 |  |
| SRC-0513 | `STUDYNEXUS-V4.6-SOURCE-CORPUS/PRE-IMPLEMENTATION-BASELINE-V2/canonical/01-business.md` | `c0248291bdda23d03f2a592dd036864f15f9c7cdb47bce869fad5dd8198e7e01` | 8 | NDG-006 |
| SRC-0183 | `StudyNexus-Pre-Implementation-Baseline/PRE-IMPLEMENTATION-BASELINE/canonical/01-business.md` | `a1c875f43f482658f042121d96d6c0d69e58738fe1208ad48c6c22a8e5f3b4f9` | 1 | NDG-006 |

## Related working-corpus material

- See `../00-Governance/StudyNexus-Clean-Reconstructed-Corpus-Current-Authority-Map.md` for authority rules.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Master-Index.csv` for machine navigation.
- See `../01-Indexes-and-Registers/StudyNexus-Clean-Reconstructed-Corpus-Source-Disposition-Ledger.csv` for every original archive path and disposition.
