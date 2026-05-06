# Sealed To Release Boundary Map

## Purpose

This graph separates sealed or private model development material from public model-card and Hugging Face release documentation.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph sealed["Private Or Sealed Development"]
    weights["Unreleased weights"]:::sealed
    corpora["Private training corpora"]:::sealed
    scripts["Sealed training scripts"]:::sealed
    evals["Private evaluations and hidden benchmarks"]:::sealed
    prompts["Production prompts"]:::sealed
    telemetry["Private telemetry"]:::sealed
  end

  subgraph review["Release Review Gate"]
    data["Data review"]:::risk
    privacy["Privacy review"]:::risk
    sealedReview["Sealed-IP review"]:::risk
    safety["Safety review"]:::risk
    governance["Governance review"]:::authority
  end

  subgraph publicDocs["Public Documentation"]
    card["Model card"]:::public
    evalSummary["Public evaluation summary"]:::public
    safetyNote["Safety note"]:::public
    releaseNotes["Release notes"]:::public
  end

  subgraph surfaces["Public Surfaces"]
    github["GitHub companion docs"]:::release
    hf["Hugging Face model release"]:::release
    reports["Transparency report"]:::foundation
  end

  weights -. blocked unless approved artifact .-> sealedReview
  corpora -. summary only after review .-> data
  scripts -. blocked .-> sealedReview
  evals -. public summary only .-> safety
  prompts -. blocked .-> sealedReview
  telemetry -. summary only after privacy review .-> privacy
  data --> governance
  privacy --> governance
  sealedReview --> governance
  safety --> governance
  governance --> card
  governance --> evalSummary
  governance --> safetyNote
  card --> releaseNotes
  evalSummary --> releaseNotes
  safetyNote --> releaseNotes
  releaseNotes --> github
  releaseNotes --> hf
  releaseNotes --> reports

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef foundation fill:#fff3d7,stroke:#9a6b00,color:#463100;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Public model-card documentation can summarize approved categories and limits, but not publish sealed development material.
- Hugging Face release is downstream from public release notes and governance review.
- Public evaluation summaries are summaries, not private evaluation dumps.

## Boundary Notes

- Sealed scripts, production prompts, private corpora, private evaluations, and private telemetry are blocked from public docs by default.
- Unreleased weights cannot appear in public GitHub or Hugging Face releases without explicit artifact release authorization.
- Public summaries must be reviewed for method leakage.

## Follow-Up Actions

- Add release approval records before first model release.
- Define model-specific exclusions in each reviewed model card.
- Revisit this map if any model moves to experimental status.
