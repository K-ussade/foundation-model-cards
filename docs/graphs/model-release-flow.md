# Model Release Flow

## Purpose

This graph shows the release-documentation flow from planned model scope to reviewed public Hugging Face model release.

## Mermaid Diagram

```mermaid
flowchart TB
  planned["Planned model scope"]:::workflow

  subgraph review["Review Gates"]
    data["Training data and privacy review"]:::risk
    sealed["Sealed-IP review"]:::risk
    eval["Evaluation review"]:::risk
    safety["Safety and limitations review"]:::risk
    governance["Governance release approval"]:::authority
  end

  subgraph docs["Public Documentation"]
    card["Model card"]:::public
    evalSummary["Evaluation summary"]:::public
    safetyNote["Safety note"]:::public
    notes["Release notes"]:::public
    companion["GitHub companion README"]:::release
  end

  subgraph release["Release Surface"]
    hf["Hugging Face model repository"]:::release
    monitor["Monitoring, correction, deprecation"]:::workflow
  end

  planned --> data
  data --> sealed
  sealed --> eval
  eval --> safety
  safety --> governance
  governance --> card
  governance --> evalSummary
  governance --> safetyNote
  card --> notes
  evalSummary --> notes
  safetyNote --> notes
  notes --> companion
  companion --> hf
  hf --> monitor

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Planned model scope is not a release claim.
- Model cards and release notes are prerequisites for public release.
- Monitoring can trigger correction, pause, deprecation, or removal.

## Boundary Notes

- Weights, private corpora, sealed scripts, production prompts, and private evaluations do not enter public documentation.
- Evaluation summaries must not expose hidden benchmarks or private logs.
- Hugging Face links appear only after release approval.

## Follow-Up Actions

- Add release approval records outside this public repo when sensitive.
- Create model-specific companion docs only after review.
- Update status tables when a model changes state.
