# GitHub To Hugging Face Map

## Purpose

This graph shows how GitHub companion documentation should connect to future reviewed Hugging Face model repositories.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph github["GitHub Companion"]
    readme["Companion README"]:::public
    cardStd["Model-card standard"]:::public
    evalDoc["Evaluation summary"]:::public
    safetyDoc["Safety and limitations"]:::public
    releaseNotes["Release notes"]:::public
  end

  subgraph hf["Hugging Face Release Surface"]
    modelCard["HF model card"]:::release
    modelRepo["HF model repository"]:::release
  end

  subgraph web["Foundation Context"]
    roadmap["foundation-public-roadmap"]:::workflow
    network["218.network context page"]:::workflow
  end

  readme --> modelCard
  cardStd --> modelCard
  evalDoc --> modelCard
  safetyDoc --> modelCard
  releaseNotes --> modelRepo
  modelCard --> readme
  modelRepo --> readme
  roadmap --> readme
  network --> modelCard

  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- GitHub stores companion docs and release notes.
- Hugging Face stores the reviewed public model artifact and card.
- Roadmap and `218.network` links provide status and context without replacing release review.

## Boundary Notes

- Placeholder links must not be treated as release evidence.
- Hugging Face must not be used for private development artifacts.
- GitHub companion docs must not expose private corpora, weights, prompts, or sealed methods.

## Follow-Up Actions

- Add actual Hugging Face links only after public repositories exist.
- Update companion README templates as release requirements mature.
- Keep roadmap status aligned with link status.
