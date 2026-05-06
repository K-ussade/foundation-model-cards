# Public And Private Boundary

## Purpose

This document defines what can and cannot be published in `foundation-model-cards`.

## Allowed Public Material

| Material | Condition |
| --- | --- |
| Model card templates | Clearly labeled as templates. |
| Model card standards | Public, non-operational release requirements. |
| Planned model names | Marked planned and not described as released. |
| Release checklist | No private release records. |
| Public evaluation summary format | No private evaluations or hidden benchmarks. |
| Public release status policy | Status definitions only. |
| Reviewed model cards | Only after release approval. |
| Mermaid release maps | No sealed methods or private topology. |

## Forbidden Public Material

| Material | Reason |
| --- | --- |
| Model weights or checkpoints | Release and safety boundary. |
| Unreleased weights | Release boundary. |
| Private training corpora | Privacy and IP boundary. |
| Sealed training scripts | Company sealed IP boundary. |
| Sealed YOSO-YAi LLC IP | Company sealed IP boundary. |
| Private evaluations | Safety and release boundary. |
| Hidden benchmarks | Evaluation integrity boundary. |
| Donor private data | Donor privacy boundary. |
| Student data | Student privacy boundary. |
| School private data | School and student privacy boundary. |
| Volunteer private data | Personal data boundary. |
| Customer data | Company/customer confidentiality boundary. |
| Production prompts | Security and method boundary. |
| Private telemetry | Privacy and security boundary. |
| Secrets, tokens, and API keys | Security boundary. |
| Security-sensitive NEURONA operational details | Operational safety boundary. |

## Generated Output Rule

Generated summaries, examples, screenshots, logs, model outputs, and diagrams inherit the boundary of their inputs until reviewed.
