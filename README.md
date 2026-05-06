# Foundation Model Cards

## Purpose

This repository is the public model-card scaffold for future 218 Network Foundation civic AI model releases. It defines model card standards, evaluation summary requirements, release checklist, planned model companions, sealed-to-release boundaries, and model release workflow maps.

This repository does not contain model weights, checkpoints, private training corpora, sealed training scripts, private evaluations, hidden benchmarks, production prompts, or claims that any planned model exists.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded |
| Entity owner | 218 Network Foundation for Foundation-owned model releases |
| Authority | Foundation release authority with human governance, safety, privacy, and data review |
| Canonical source | GitHub public scaffold for approved model-card documentation; private release preparation stays outside this repo |
| GitHub role | Public model-card companion and release documentation |
| Hugging Face role | Companion documentation for future reviewed `218-network/*` model repositories |
| Public surface | Model cards, release checklist, public evaluation summaries, and release status documentation |

## Related Public Repositories

| Repository | Relationship |
| --- | --- |
| [`foundation-governance`](https://github.com/K-ussade/foundation-governance) | Governance authority and publication boundary. |
| [`foundation-transparency-reports`](https://github.com/K-ussade/foundation-transparency-reports) | Public release reporting after reviewed releases exist. |
| [`civic-ai-safety-notes`](https://github.com/K-ussade/civic-ai-safety-notes) | Safety notes, limitations, public reliance boundaries, and review gates. |

## Planned Model Companions

These names are planned release targets only. They are not released models and do not imply trained weights, public benchmarks, or available Hugging Face repositories.

| Planned Hugging Face Model | Status | GitHub Companion Status |
| --- | --- | --- |
| `218-network/civic-qa-foundation-base` | Planned | Model card scaffold only. |
| `218-network/neurona-status-summarizer` | Planned | Model card scaffold only. |
| `218-network/cleanup-report-classifier` | Planned | Model card scaffold only. |
| `218-network/spanish-civic-assistant-pr` | Planned | Model card scaffold only. |
| `218-network/school-resource-recommender` | Planned | Model card scaffold only. |

## First Files

| Path | Role |
| --- | --- |
| `cards/README.md` | Card index and planned/released status rules. |
| `templates/model-card.md` | Hugging Face compatible model card template. |
| `release-checklist.md` | Required release checks before a model can be reported as released. |
| `docs/model-card-standard.md` | Required model card sections and claim rules. |
| `docs/evaluation-summary-standard.md` | Public evaluation summary format. |
| `docs/release-status-policy.md` | Planned/scaffolded/experimental/released/deprecated model status rules. |
| `docs/planned-model-companions.md` | Planned model companion registry. |
| `docs/public-private-boundary.md` | Explicit allowed and forbidden material. |
| `docs/quality-gate.md` | Required checks before publication. |
| `docs/graphs/` | Mermaid maps for model-card release flow and sealed-to-release boundary. |

## Public Boundary

Allowed:

- public model card templates;
- public model card standards;
- public planned model companion names marked planned;
- public release checklists;
- public evaluation summary format;
- public safety and limitation links;
- reviewed public model cards after release approval.

Forbidden:

- model weights or checkpoints;
- unreleased model weights;
- private training corpora;
- sealed training scripts;
- sealed YOSO-YAi LLC IP;
- private evaluations;
- hidden benchmarks;
- private Foundation operations;
- donor private data;
- student data;
- school private data;
- volunteer private data;
- customer data;
- production prompts;
- private telemetry;
- secrets, tokens, and API keys;
- security-sensitive NEURONA operational details.

## Non-Claims

This scaffold does not claim that any model has been trained, evaluated, uploaded, benchmarked, released, or approved for public use.

## Validation

Run:

```bash
scripts/validate-model-cards.sh
```

## First Milestone

Model cards v0.1 is complete when the template, release checklist, evaluation summary standard, planned model companion registry, boundary document, quality gate, and Mermaid maps are reviewed by human Foundation authority.
