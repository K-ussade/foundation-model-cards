# Planned Model Companions

## Purpose

This registry lists planned Hugging Face model names and the model-card release documentation required before any model can move beyond planned status.

## Planned Models

| Planned Hugging Face Model | Purpose | Status | Required Public Documentation |
| --- | --- | --- | --- |
| `218-network/civic-qa-foundation-base` | Baseline civic QA model for approved public Foundation and civic reference material. | Planned | Model card, safety note, evaluation summary, release notes, transparency path. |
| `218-network/neurona-status-summarizer` | Summarizes approved public NEURONA status signals for public communication. | Planned | Security-reviewed model card, safety note, evaluation summary, release notes, transparency path. |
| `218-network/cleanup-report-classifier` | Classifies approved cleanup report examples into public reporting categories. | Planned | Data-reviewed model card, safety note, evaluation summary, release notes, transparency path. |
| `218-network/spanish-civic-assistant-pr` | Spanish-language civic assistant for Puerto Rico public Foundation and civic reference material. | Planned | Language-reviewed model card, safety note, evaluation summary, release notes, transparency path. |
| `218-network/school-resource-recommender` | Recommends public school and community resources from approved public indexes. | Planned | School-data-reviewed model card, safety note, evaluation summary, release notes, transparency path. |

## Registry Rules

- Add planned models here before creating model-specific cards.
- Keep status planned until public release documentation exists.
- Do not create a Hugging Face model repo just to reserve a name unless it is clearly scaffolded with no weights and no release claim.
- Do not publish model-specific cards with fabricated training, evaluation, benchmark, deployment, or performance data.
