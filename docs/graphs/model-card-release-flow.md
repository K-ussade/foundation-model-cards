# Model Card Release Flow

## Purpose

This graph shows how a planned model moves through scope, review, model card documentation, safety notes, release notes, Hugging Face release, and monitoring.

## Mermaid Diagram

```mermaid
flowchart TB
  subgraph authority["Foundation Authority"]
    human["Human release authority"]:::authority
    governance["foundation-governance"]:::foundation
    safety["civic-ai-safety-notes"]:::foundation
    transparency["foundation-transparency-reports"]:::foundation
  end

  subgraph planning["Planned Model Documentation"]
    planned["Planned model name"]:::release
    scope["Purpose and intended use"]:::workflow
    dataReview["Data and privacy review"]:::risk
    sealedReview["Sealed-IP review"]:::risk
    evalPlan["Evaluation summary plan"]:::workflow
  end

  subgraph publicDocs["Public Release Documentation"]
    modelCard["Model card"]:::public
    safetyNote["Safety note"]:::public
    releaseNotes["Release notes"]:::public
    transparencyPath["Transparency report path"]:::foundation
  end

  subgraph release["Release Surface"]
    hfModel["Hugging Face model<br/>only after approval"]:::release
    monitoring["Monitoring, correction, deprecation"]:::workflow
  end

  human ==> scope
  governance --> scope
  planned --> scope
  scope --> dataReview
  dataReview --> sealedReview
  sealedReview --> evalPlan
  evalPlan --> modelCard
  safety --> safetyNote
  modelCard --> releaseNotes
  safetyNote --> releaseNotes
  transparency --> transparencyPath
  releaseNotes ==> hfModel
  transparencyPath --> hfModel
  hfModel --> monitoring
  monitoring -. review update .-> human

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef foundation fill:#fff3d7,stroke:#9a6b00,color:#463100;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Planned model names do not imply model artifacts exist.
- Model cards are release prerequisites, not post-release decoration.
- Hugging Face release is downstream from governance, safety, privacy, sealed-IP, and documentation review.

## Boundary Notes

- Private training corpora, sealed scripts, private evaluations, hidden benchmarks, and unreleased weights stay outside public docs.
- Safety notes and transparency paths are required before public reliance is invited.
- Monitoring can trigger correction, pause, or deprecation.

## Follow-Up Actions

- Add model-specific cards only after human review.
- Link Hugging Face model repositories only after they exist with approved cards.
- Update transparency reports after any release.
