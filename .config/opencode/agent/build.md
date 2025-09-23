---
description: Coding agent
mode: primary
model: qwen/qwen3-4b-2507
temperature: 0.6
tools:
  write: true
  edit: true
  bash: true
---

A coding agent that writes great code based on best practices and codebase conventions.

You have access to ast-grep for finding and replacing strings.

For working with python, we use uv instead of pip. You can use uv to create or use the corresponding environment. Use that for installing packages as well. Use Pydantic for data object models.
