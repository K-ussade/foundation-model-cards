#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "docs/architecture.md"
  "docs/model-card-standard.md"
  "docs/public-private-boundaries.md"
  "docs/release-readiness.md"
  "docs/evaluation-standard.md"
  "docs/safety-and-limitations-standard.md"
  "docs/github-huggingface-linking.md"
  "docs/graphs/model-card-system-map.md"
  "docs/graphs/model-release-flow.md"
  "docs/graphs/evaluation-flow.md"
  "docs/graphs/public-private-boundary-map.md"
  "docs/graphs/github-to-huggingface-map.md"
  "templates/model-card.base.md"
  "templates/model-card.civic-assistant.md"
  "templates/model-card.classifier.md"
  "templates/model-card.summarizer.md"
  "templates/evaluation-report.template.md"
  "templates/safety-and-limitations.template.md"
  "templates/release-notes.template.md"
  "templates/github-companion-readme.template.md"
  "templates/release-checklist.template.md"
  "examples/README.md"
  "examples/synthetic-model-card-example.md"
  "scripts/validate-model-cards.sh"
)

required_graph_sections=(
  "## Purpose"
  "## Mermaid Diagram"
  "## Interpretation Notes"
  "## Boundary Notes"
  "## Follow-Up Actions"
)

required_model_sections=(
  "## Status"
  "## Intended Use"
  "## Out-of-Scope Use"
  "## Training Data Summary"
  "## Data Exclusions"
  "## Privacy Boundaries"
  "## Evaluation Status"
  "## Limitations"
  "## Bias/Risk Notes"
  "## Safety Notes"
  "## Governance/Contact"
  "## GitHub Companion Link"
  "## 218.network"
)

missing=0

printf "Foundation Model Cards Validation\n"
printf "Root: %s\n\n" "$ROOT_DIR"

for file in "${required_files[@]}"; do
  if [ -f "$ROOT_DIR/$file" ]; then
    printf "PASS  %s\n" "$file"
  else
    printf "FAIL  %s\n" "$file"
    missing=$((missing + 1))
  fi
done

printf "\nGraph Structure Checks\n"

for graph in "$ROOT_DIR"/docs/graphs/*.md; do
  [ -f "$graph" ] || continue
  rel="${graph#$ROOT_DIR/}"
  for section in "${required_graph_sections[@]}"; do
    if grep -qF "$section" "$graph"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nModel Card Template Checks\n"

for template in "$ROOT_DIR"/templates/model-card.*.md; do
  [ -f "$template" ] || continue
  rel="${template#$ROOT_DIR/}"
  if head -n 1 "$template" | grep -q -- "---"; then
    printf "PASS  %s starts with YAML metadata block\n" "$rel"
  else
    printf "FAIL  %s missing YAML metadata block\n" "$rel"
    missing=$((missing + 1))
  fi
  for section in "${required_model_sections[@]}"; do
    if grep -qF "$section" "$template"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nSynthetic Example Checks\n"

if grep -Eiq "synthetic|not a real model|not released" "$ROOT_DIR/examples/synthetic-model-card-example.md"; then
  printf "PASS  examples/synthetic-model-card-example.md is clearly synthetic\n"
else
  printf "FAIL  examples/synthetic-model-card-example.md lacks synthetic non-claim language\n"
  missing=$((missing + 1))
fi

printf "\nBoundary Language Checks\n"

for file in "$ROOT_DIR"/README.md "$ROOT_DIR"/docs/public-private-boundaries.md "$ROOT_DIR"/examples/synthetic-model-card-example.md; do
  rel="${file#$ROOT_DIR/}"
  if grep -qF "model weights" "$file" && grep -qF "private training corpora" "$file" && grep -qF "sealed YOSO-YAi LLC IP" "$file"; then
    printf "PASS  %s contains required model boundary exclusions\n" "$rel"
  else
    printf "FAIL  %s missing required model boundary exclusions\n" "$rel"
    missing=$((missing + 1))
  fi
done

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - model card repository is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
