# AGENTS.md

This file governs Codex work inside `foundation-model-cards`.

## Repository Role

`foundation-model-cards` is a public standards and template repository for future reviewed model cards and companion release documentation. It is not a model-development repository and is not a place for private training corpora, unreleased weights, model checkpoints, sealed scripts, private evaluations, hidden benchmarks, production prompts, private telemetry, or deployment claims.

## Authority

- The 218 Network Foundation owns Foundation model-card standards for Foundation-owned releases.
- Human Foundation release, governance, data, privacy, and safety authority remains upstream of publication.
- Codex may draft templates, examples, graphs, and validation checks.
- Codex is not model, release, governance, safety, legal, privacy, data, or publication authority.

## Entity Boundary Rules

- The Foundation is independent from YOSO-YAi LLC.
- The Foundation is not a company marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC.
- Do not use Foundation release documentation to sell company products.
- Do not present planned model names as released artifacts.

## Public Boundary

Allowed:

- Hugging Face-style model-card templates;
- public release-readiness standards;
- synthetic examples clearly labeled synthetic/public-safe;
- evaluation summary formats;
- safety and limitations language;
- GitHub and Hugging Face companion linking rules.

Forbidden:

- model weights or checkpoints;
- unreleased weights;
- private training corpora;
- sealed training scripts;
- sealed YOSO-YAi LLC IP;
- hidden benchmarks;
- private evaluations;
- private Foundation operations;
- donor private data;
- student data;
- school private data;
- volunteer private data;
- customer data;
- private telemetry;
- production prompts;
- secrets, tokens, and API keys;
- security-sensitive NEURONA operational details.

## Writing Rules

- Use precise release-documentation language.
- Mark examples as synthetic and non-release examples.
- Keep model status explicit.
- Include intended use, out-of-scope use, data exclusions, privacy boundaries, limitations, bias/risk notes, safety notes, governance contact, GitHub companion link, and `218.network` placeholder in model-card templates.
- Do not claim a model exists unless the public Hugging Face repository, model card, release notes, safety notes, and review status exist.
- Do not write final Upwork profile text, active offer copy, pricing, turnaround promises, or client-facing claims.

## Validation

Before final response after edits:

1. Run `scripts/validate-model-cards.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
