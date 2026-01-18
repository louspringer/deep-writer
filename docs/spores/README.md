# Spores (Self-Contained Markdown Artifacts)

## What is a Spore?
- A spore is a portable, self-contained Markdown document with embedded scripts and assets.
- Purpose: package a concept, workflow, or micro‑spec to hand off to another agent or team.
- Design: human‑readable first; runnable snippets for reproducibility.

## Anatomy
- Front matter (ID, title, version, authors, createdAt)
- Problem / Context
- Solution / Steps
- Embedded scripts (bash/python) and prompts
- Outputs / Verification

## Identified Spec
When a spore defines or references a specification, include an immutable identifier:
```
Identified-Spec-Id: <UUID or ULID>
```
This ensures specs are uniquely referencable across repos and time.


