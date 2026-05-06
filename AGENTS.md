# AGENTS.md

This file governs Codex work inside `foundation-model-cards`.

## Repository Role

`foundation-model-cards` is the public model-card and release documentation scaffold for future Foundation civic AI model releases. It is not a model-development repository, weights repository, training workspace, evaluation lab, dataset repository, or sealed development workspace.

## Authority

- The 218 Network Foundation owns Foundation model-card documentation.
- Human Foundation release, governance, safety, privacy, and data authority remains upstream of publication.
- Codex may draft templates, standards, checklists, graphs, and validation checks.
- Codex is not release, governance, safety, data, legal, or publication authority.

## Entity Boundary Rules

- The Foundation is independent from YOSO-YAi LLC.
- The Foundation is not a YOSO-YAi marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC, not a Foundation product.
- YOSO-YAi LLC and YOSOR references must be boundary context only.

## Public Boundary

Allowed:

- model card templates;
- model card standards;
- planned model companion names marked planned;
- release checklists;
- public evaluation summary format;
- public release workflow maps.

Forbidden:

- model weights or checkpoints;
- unreleased weights;
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

## Writing Rules

- Write in a precise release-documentation and civic AI safety voice.
- Mark future models as planned unless public release evidence exists.
- Do not invent model performance, training data, evaluation results, model availability, benchmarks, endorsements, or deployment status.
- Link to safety notes and transparency reports by status.
- Update graphs when release workflow, boundary handling, or artifact status changes.

## Validation

Before final response after edits:

1. Run `scripts/validate-model-cards.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
