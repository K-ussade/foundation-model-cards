# Evaluation Summary Standard

## Purpose

This standard defines what can be included in public model evaluation summaries without exposing private evaluations, hidden benchmarks, private datasets, or sealed methods.

## Required Fields

| Field | Required Detail |
| --- | --- |
| Evaluation status | Planned, draft, reviewed, public, corrected, or deprecated. |
| Evaluation scope | What public behavior was evaluated. |
| Dataset class | Public, synthetic, approved sanitized, private excluded, or sealed excluded. |
| Metrics | Public-safe metrics or qualitative findings. |
| Safety checks | Summary of safety categories reviewed. |
| Bias and limitations | Known gaps and affected contexts. |
| Privacy review | Statement of private data exclusions. |
| Reviewer role | Public role or authority label, not private personal detail. |
| Date | Public review or publication date. |
| Follow-up | Required monitoring, correction, or next evaluation. |

## Forbidden Evaluation Material

Do not publish:

- private test sets;
- hidden benchmark prompts;
- red-team logs;
- private evaluations;
- model failure examples containing private data;
- sensitive abuse details with operational value;
- sealed methods;
- private training corpora;
- production prompts;
- security-sensitive NEURONA operational detail.

## Public Evaluation Language

Use restrained language. State what was evaluated, what was not evaluated, and what public reliance remains unsupported.
