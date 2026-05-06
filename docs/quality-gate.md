# Quality Gate

## Purpose

This quality gate defines the minimum checks before model-card documentation changes are merged or published.

## Required Checks

| Gate | Required Outcome |
| --- | --- |
| Entity voice | Foundation release documentation voice is preserved and not written as company marketing. |
| Boundary | Private, sealed, donor, student, school, volunteer, customer, evaluation, telemetry, prompt, and secret material is excluded. |
| Model status | Planned/scaffolded/experimental/released/deprecated status is accurate. |
| Release claims | No model is described as released without complete public release documentation. |
| Safety link | Release-facing content links to safety note requirements. |
| Evaluation summary | Public evaluation language avoids private evaluation and hidden benchmark leakage. |
| Human authority | Human Foundation authority remains upstream of release publication. |
| Graph consistency | Mermaid maps match release workflow and boundary behavior. |
| Validation | `scripts/validate-model-cards.sh` passes. |

## Done Means

Work is done when:

- required files are present;
- model-card docs are public-safe;
- Foundation independence is preserved;
- no private, sealed, or sensitive material is exposed;
- no unreleased model artifact is claimed;
- relevant graphs are updated;
- validation passes.
