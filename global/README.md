# 🌍 Global Agent Context

This directory contains the universal baseline for our AI agents. The files here are injected into **every** project regardless of the specific technology stack.

**Contents include:**
- `.cursorrules`: Global fallback directives preventing OS-level mutations.
- `security-secrets`: Absolute ban on hardcoding API keys or emitting secrets.
- `git-standards`: Enforcement of Conventional Commits and atomic changes.
- `devops-standards`: Nix Flakes and Docker multi-stage build guidelines.
- `qa-engineer`: A dedicated, isolated sub-agent responsible exclusively for breaking code and writing tests.
