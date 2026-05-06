# Model Card Standard

## Purpose

This standard defines required public model card sections for Foundation civic AI model releases.

## Required Sections

| Section | Required Detail |
| --- | --- |
| YAML metadata | Hugging Face metadata with license, language, tags, pipeline, datasets, metrics, and model index placeholders or approved values. |
| Model summary | Owner, version, status, purpose, and non-claims. |
| Intended use | Approved public use cases, audience, domain, geography, and language. |
| Out-of-scope use | Unsupported decisions, forbidden reliance, and private-data exclusions. |
| Foundation alignment | Public trust purpose and Foundation independence from YOSO-YAi LLC. |
| Training data summary | Public-safe data category summary. |
| Data exclusions | Explicit private, sealed, sensitive, and unreleased artifact exclusions. |
| Privacy boundaries | Review process and known privacy limits. |
| Evaluation status | Functional, safety, bias, privacy, and governance review status. |
| Limitations | Scope, freshness, language, geography, reliability, and known failure modes. |
| Bias and risk notes | High-level risk categories without operational misuse detail. |
| Safety notes | Link to reviewed safety note and reliance boundary. |
| Environmental and civic context | Public compute or hosting context if approved, and civic interpretation notes. |
| Citation, contact, governance | Citation, contact, governance owner, and Foundation context link. |
| GitHub companion | Link to companion repository. |
| Hugging Face link | Link to released HF model only when public. |
| Version history | Version, date, status, and notes. |

## Claim Rules

- Do not claim a model exists until a public artifact exists.
- Do not claim release until model card, safety note, release notes, governance review, and Hugging Face repository exist.
- Do not claim performance without public evaluation summary and context.
- Do not expose private evaluation data or hidden benchmarks.
- Do not publish sealed methods or enough surrounding detail to reconstruct sealed capability.
