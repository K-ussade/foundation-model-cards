# Release Status Policy

## Purpose

This policy standardizes how model status is described in model cards, release notes, profile documentation, and transparency reports.

## Statuses

| Status | Meaning |
| --- | --- |
| Planned | Name, purpose, and review path are documented; no public model artifact is claimed. |
| Scaffolded | Public card or companion documentation exists; no model release is claimed unless stated. |
| Experimental | Limited reviewed model artifact exists for evaluation with explicit limitations. |
| Released | Public model artifact has approved card, safety note, release notes, companion links, and governance review status. |
| Deprecated | Artifact remains visible only with replacement, sunset, or archival context. |

## Required Status Handling

- Planned names must not be described as trained, uploaded, benchmarked, deployed, or released.
- Scaffolded cards must state that no model artifact is released unless a public Hugging Face model exists.
- Experimental models require limitation and monitoring language.
- Released models require complete public release documentation.
- Deprecated models require replacement, sunset, or archival context.
