# Release Readiness

## Purpose

This standard defines the public documentation gates required before a model can be described as released.

## Required Gates

| Gate | Required outcome |
| --- | --- |
| Model card | Complete card with status, intended use, exclusions, limitations, and governance contact. |
| Evaluation summary | Public evaluation status, evidence links, and limitations. |
| Safety review | Safety and limitations note reviewed. |
| Data/privacy review | Training data summary and exclusions reviewed. |
| Sealed-IP review | No sealed YOSO-YAi LLC IP, private prompts, or protected methods exposed. |
| Governance review | Human Foundation release authority approves public status. |
| GitHub companion | Public companion README and release notes linked. |
| Hugging Face artifact | Public model repository exists before `released` status is used. |

## Status Rule

Use `planned` until the public Hugging Face model repository, card, release notes, safety notes, and review status exist.
