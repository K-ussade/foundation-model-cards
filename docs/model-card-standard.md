# Model Card Standard

## Purpose

This standard defines required content for Foundation-aligned Hugging Face model-card templates and future reviewed model cards.

## Required Sections

Every model-card template must include:

| Section | Requirement |
| --- | --- |
| Status | Planned, scaffolded, experimental, released, deprecated, or private/not-public. |
| Intended use | Public-safe use cases and user groups. |
| Out-of-scope use | Prohibited, unsupported, or high-risk uses. |
| Training data summary | High-level reviewed summary only. |
| Data exclusions | Explicit private, sealed, and sensitive exclusions. |
| Privacy boundaries | Personal, donor, student, volunteer, customer, and telemetry protections. |
| Evaluation status | Evaluation state and evidence link or planned status. |
| Limitations | Known limits and non-reliance notes. |
| Bias/risk notes | Public risk categories and known review needs. |
| Safety notes | Safety controls, review status, and escalation path. |
| Governance/contact | Human authority and contact placeholders. |
| GitHub companion link | Link placeholder for companion docs. |
| `218.network` placeholder | Context link placeholder or planned status. |

## Claim Rules

- Do not claim weights exist unless the public Hugging Face repository exists.
- Do not claim evaluation results without public evaluation evidence and review status.
- Do not include private corpora, sealed methods, hidden benchmarks, or production prompts.
- Planned names must stay marked planned.
