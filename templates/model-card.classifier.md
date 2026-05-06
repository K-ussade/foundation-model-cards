---
license: "[license-placeholder]"
language:
  - "[language-code]"
library_name: "[library-placeholder]"
pipeline_tag: "text-classification"
tags:
  - civic-ai
  - classifier
  - model-card-template
datasets:
  - "[public-reviewed-dataset-or-none]"
metrics:
  - "accuracy-placeholder"
  - "f1-placeholder"
---

# [Classifier Model Name] Model Card

## Status

| Field | Value |
| --- | --- |
| Model status | [planned / scaffolded / experimental / released / deprecated] |
| Release status | [not released unless public Hugging Face repository exists] |
| Review status | [planned / in review / approved / blocked] |
| Governance authority | [human release authority] |

## Intended Use

[Describe public-safe classification support, labels, and intended review workflow.]

## Out-of-Scope Use

- Automated eligibility, disciplinary, enforcement, legal, emergency, medical, financial, or official decisions.
- Person-level profiling, surveillance, or sensitive inference.
- Processing donor private data, student data, volunteer private data, customer data, private Foundation operations, or private telemetry.

## Training Data Summary

[Provide a reviewed public summary of public or approved training sources, or state `Not applicable; no public model weights are released.`]

## Data Exclusions

Excluded:

- donor private data;
- student data;
- school private data;
- volunteer private data;
- customer data;
- private Foundation operations;
- private training corpora;
- private telemetry;
- sealed YOSO-YAi LLC IP;
- security-sensitive NEURONA operational details.

## Privacy Boundaries

[State how input/output examples, labels, and evaluation samples avoid PII and sensitive records.]

## Evaluation Status

| Field | Value |
| --- | --- |
| Evaluation status | [planned / in review / reviewed / not applicable] |
| Evaluation summary link | [GitHub link or planned] |
| Public benchmark status | [none / planned / reviewed] |

## Limitations

[State class imbalance, label ambiguity, drift, source coverage, and review limitations.]

## Bias/Risk Notes

[Describe false positive/negative risks and risk to communities affected by classification.]

## Safety Notes

[State human review requirements and escalation path for high-impact or uncertain outputs.]

## Governance/Contact

| Field | Value |
| --- | --- |
| Owner | 218 Network Foundation or [owner] |
| Release authority | [human release authority] |
| Contact | [contact placeholder] |

## GitHub Companion Link

[https://github.com/K-ussade/foundation-model-cards or model-specific companion link]

## 218.network

[https://218.network context page or planned]

## Non-Claims

This template does not claim that a classifier model, model weights, evaluations, datasets, Spaces, schools, NEURONA deployments, or services exist.
