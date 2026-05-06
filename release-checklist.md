# Model Release Checklist

## Purpose

This checklist defines the minimum requirements before a Foundation model can be described as released.

## Required Before Release

| Gate | Required Outcome |
| --- | --- |
| Scope review | Intended use, audience, geography, language, and out-of-scope use are explicit. |
| Governance review | Foundation release authority approves public release. |
| Data review | Training and evaluation data categories are documented at public-safe level. |
| Privacy review | Donor, student, school, volunteer, customer, private telemetry, and private operational data are excluded. |
| Sealed IP review | Sealed YOSO-YAi LLC IP, private corpora, unreleased checkpoints, and protected methods are excluded. |
| Evaluation review | Public evaluation summary is complete and does not expose private test data. |
| Safety review | Safety note exists in `civic-ai-safety-notes` or equivalent reviewed public location. |
| Model card review | Model card is complete and links to safety, governance, transparency, and Foundation context. |
| Release notes | Release notes state version, status, limitations, exclusions, and monitoring plan. |
| Transparency review | Public transparency report path is identified if release is public. |
| Hugging Face review | Hugging Face repo, metadata, card, and links are consistent. |
| Monitoring review | Feedback, correction, pause, and deprecation paths are documented. |

## Release Refusal Conditions

Refuse release if any of the following are present:

- model weights without release approval;
- private training corpora;
- sealed training scripts;
- private evaluations or hidden benchmarks;
- donor private data;
- student data;
- school private data;
- volunteer private data;
- customer data;
- production prompts;
- private telemetry;
- secrets, tokens, or API keys;
- security-sensitive NEURONA operational details.

## Status Rule

Until every required release gate passes, keep model status as planned, scaffolded, or experimental. Do not use released language.
