# Contributing

## Purpose

Public contributions should improve model card structure, release discipline, evaluation summary standards, public boundary clarity, and cross-links to safety and transparency documentation.

## Contribution Rules

| Area | Rule |
| --- | --- |
| Model artifacts | Do not submit weights, checkpoints, training scripts, private corpora, private evaluations, hidden benchmarks, or production prompts. |
| Claims | Do not add performance, safety, adoption, training, release, or deployment claims unless public release documentation exists. |
| Data | Do not submit donor private data, student data, school private data, volunteer private data, customer data, private telemetry, or sealed IP. |
| Safety | Link to `civic-ai-safety-notes` for limitations and public reliance language. |
| Transparency | Link to `foundation-transparency-reports` when a reviewed public release report exists. |
| Graphs | Update Mermaid maps when release workflow, boundary, or status behavior changes. |

## Pull Request Checklist

- [ ] The change is public-safe.
- [ ] No private, sealed, donor, student, school, volunteer, customer, evaluation, telemetry, prompt, or secret material is included.
- [ ] Planned models remain marked planned unless release evidence exists.
- [ ] Safety and limitation language is present for release-facing content.
- [ ] Affected graphs and quality gates are updated.
- [ ] `scripts/validate-model-cards.sh` passes.

## Security And Privacy

Do not report secrets, private data, private evaluations, or sensitive operational details in public issues. Use the private security path in `SECURITY.md`.
