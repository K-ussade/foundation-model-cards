# Evaluation Flow

## Purpose

This graph shows how evaluation material is converted into a public-safe evaluation summary.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph sources["Evaluation Inputs"]
    plan["Evaluation plan"]:::workflow
    publicData["Public or reviewed data"]:::public
    privateLogs["Private logs or hidden benchmarks"]:::sealed
    riskFindings["Risk findings"]:::risk
  end

  subgraph review["Review"]
    privacy["Privacy review"]:::risk
    safety["Safety review"]:::risk
    governance["Governance review"]:::authority
  end

  subgraph output["Public Output"]
    summary["Evaluation summary"]:::public
    limits["Limitations"]:::public
    card["Model card evaluation section"]:::release
  end

  plan --> privacy
  publicData --> privacy
  privateLogs -. summary only if reviewed .-> privacy
  riskFindings --> safety
  privacy --> governance
  safety --> governance
  governance --> summary
  summary --> limits
  limits --> card

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Public evaluation summaries are reviewed summaries, not private evaluation dumps.
- Hidden benchmarks and private logs remain blocked unless a public-safe summary is approved.
- Limitations are part of the evaluation output.

## Boundary Notes

- Do not expose private prompts, telemetry, donor data, student data, customer data, or sensitive failure logs.
- Evaluation evidence must be public or explicitly reviewed for public summary.
- Metrics without public context must not be used as portfolio claims.

## Follow-Up Actions

- Define evaluation evidence links when real releases exist.
- Add model-specific evaluation summaries after review.
- Revisit the graph if evaluation categories change.
