# Foundation Model Cards

## Purpose

This repository is a public template and standards repo for Hugging Face model cards, model release notes, evaluation summaries, safety and limitations sections, and GitHub companion documentation for future reviewed Foundation-aligned model releases.

It does not contain model weights, checkpoints, private training corpora, sealed training scripts, private evaluations, hidden benchmarks, production prompts, private telemetry, datasets, Spaces, deployments, or claims that any planned model exists.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded / published |
| Entity owner | 218 Network Foundation for Foundation-owned releases |
| Authority | Human Foundation release authority with governance, safety, privacy, and data review |
| Canonical source | GitHub public standards and template source; private release preparation stays outside this repo |
| GitHub role | Public model-card companion standards and release documentation |
| Hugging Face role | Template source for future reviewed `218-network/*` model cards |
| Portfolio role | Future proof surface for model-card documentation discipline after Alexandra review |
| Public boundary | Templates, synthetic examples, release gates, and public-safe diagrams only |

## Related Public Repositories

| Repository | Relationship |
| --- | --- |
| [`K-ussade`](https://github.com/K-ussade/K-ussade) | Alexandra's public GitHub profile and status vocabulary. |
| [`foundation-graph-kit`](https://github.com/K-ussade/foundation-graph-kit) | Mermaid graph classes and public-safe diagram rules. |
| [`foundation-public-roadmap`](https://github.com/K-ussade/foundation-public-roadmap) | Public status ledger for planned and scaffolded release surfaces. |
| [`foundation-doc-templates`](https://github.com/K-ussade/foundation-doc-templates) | General documentation templates and review gates. |
| [`foundation-dataset-cards`](https://github.com/K-ussade/foundation-dataset-cards) | Dataset-card standards for future reviewed datasets. |

## Template Inventory

| Path | Role |
| --- | --- |
| `templates/model-card.base.md` | Base Hugging Face model card template. |
| `templates/model-card.civic-assistant.md` | Civic assistant model card variant. |
| `templates/model-card.classifier.md` | Classifier model card variant. |
| `templates/model-card.summarizer.md` | Summarizer model card variant. |
| `templates/evaluation-report.template.md` | Public evaluation summary template. |
| `templates/safety-and-limitations.template.md` | Safety and limitation note template. |
| `templates/release-notes.template.md` | Model release notes template. |
| `templates/github-companion-readme.template.md` | GitHub companion README template. |
| `templates/release-checklist.template.md` | Release checklist template. |

## Required Model Card Sections

Every model-card template includes:

- Status
- Intended use
- Out-of-scope use
- Training data summary
- Data exclusions
- Privacy boundaries
- Evaluation status
- Limitations
- Bias/risk notes
- Safety notes
- Governance/contact placeholders
- GitHub companion link placeholder
- `218.network` placeholder

## Public Boundary

Allowed:

- model-card templates;
- release-readiness standards;
- synthetic model-card examples clearly labeled synthetic;
- public evaluation summary formats;
- safety and limitation language;
- GitHub-to-Hugging-Face linking rules;
- planned status language without release claims.

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

This repository does not claim that any model has been trained, evaluated, uploaded, benchmarked, released, deployed, or approved for public use.

## Validation

Run:

```bash
scripts/validate-model-cards.sh
```

## First Milestone

Model cards v0.1 is complete when the templates, synthetic example, standards, release checklist, linking rules, validation script, and Mermaid maps are reviewed by human Foundation authority.
