# Public / Private Boundaries

## Purpose

This document defines what may and may not appear in public model-card templates, examples, and future reviewed cards.

## Public-Safe Material

- Template structure.
- Public-safe intended-use language.
- Public limitations and safety notes.
- Public evaluation summary format.
- Placeholder metadata.
- Synthetic examples clearly labeled synthetic/public-safe.
- Public GitHub and Hugging Face links after artifacts exist.

## Blocked Material

- Model weights or checkpoints.
- Unreleased weights.
- Private training corpora.
- Sealed training scripts.
- Sealed YOSO-YAi LLC IP.
- Hidden benchmarks.
- Private evaluations.
- Private Foundation operations.
- Donor private data.
- Student data.
- School private data.
- Volunteer private data.
- Customer data.
- Production prompts.
- Private telemetry.
- Secrets, tokens, and API keys.
- Exact sensitive infrastructure locations.
- Security-sensitive NEURONA operational details.

## Boundary Rule

Summaries of private or sealed sources inherit the private/sealed boundary until explicit human release review clears a public-safe summary.

Required exclusion language for model-card review: model weights, private training corpora, sealed YOSO-YAi LLC IP, private evaluations, hidden benchmarks, production prompts, donor private data, student data, volunteer private data, customer data, secrets, and security-sensitive NEURONA operational details are not public-safe.
