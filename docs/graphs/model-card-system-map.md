# Model Card System Map

## Purpose

This graph shows how model-card templates, standards, synthetic examples, validation, GitHub companions, and Hugging Face release surfaces relate.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph authority["Foundation Release Authority"]
    human["Human release review"]:::authority
    governance["Governance review"]:::authority
    safety["Safety review"]:::risk
    privacy["Data/privacy review"]:::risk
  end

  subgraph repo["foundation-model-cards"]
    standard["Model-card standard"]:::public
    templates["HF-style templates"]:::public
    examples["Synthetic examples"]:::public
    validator["Validation script"]:::workflow
  end

  subgraph surfaces["Public Release Surfaces"]
    github["GitHub companion docs"]:::release
    hf["Hugging Face model repo"]:::release
    web["218.network context page"]:::public
  end

  human --> standard
  governance --> standard
  safety --> templates
  privacy --> templates
  standard --> templates
  templates --> examples
  templates --> validator
  examples --> validator
  validator --> github
  github --> hf
  github --> web

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- GitHub standards and templates are public documentation infrastructure.
- Hugging Face is downstream from GitHub companion docs and human review.
- Synthetic examples do not imply a model exists.

## Boundary Notes

- Private corpora, weights, sealed scripts, private evaluations, hidden benchmarks, and prompts are excluded.
- Planned links stay placeholders until public artifacts exist.
- `218.network` context pages require separate public review.

## Follow-Up Actions

- Add model-specific cards only after release review.
- Link public Hugging Face repositories only after they exist.
- Update this map when release gates change.
