#!/usr/bin/env bash
set -e

mkdir -p global/.agents/rules

# 1. Regole Git e Versionamento per Antigravity
cat << 'EOF' > global/.agents/rules/git-standards.md
# Git & Version Control Standards

These constraints apply to all terminal operations and code generation involving version control.
- **Atomic Commits**: Ensure changes are logical and atomic. Do not mix refactoring with feature additions.
- **Conventional Commits**: Strictly adhere to the Conventional Commits specification (feat:, fix:, docs:, style:, refactor:, perf:, test:, chore:).
- **Scope**: Always include the appropriate monorepo package scope in the commit message.
EOF

# 2. DevOps & Infrastruttura per Antigravity
cat << 'EOF' > global/.agents/rules/devops-standards.md
# DevOps & Infrastructure Standards

These constraints govern how you manage system dependencies and infrastructure.
- **Nix Flakes**: Treat `flake.nix` as the ultimate source of truth for dependencies. Do not run `npm install -g` or use OS-level package managers.
- **Docker**: Always use multi-stage builds. Default to Alpine-based images (e.g., `node:18-alpine`) for production to reduce attack surfaces.
- **Privileges**: Never run Docker containers as the root user.
EOF

# 3. Sicurezza e Segreti per Antigravity
cat << 'EOF' > global/.agents/rules/security-secrets.md
# Security & Secrets Management

These rules are inviolable security boundaries for all agent and sub-agent operations.
- **Never Output Secrets**: NEVER output raw API keys, production passwords, or database URIs in chat responses or log files.
- **ENV Generation**: When scaffolding `.env` files, use obvious placeholder values (e.g., `sk_test_placeholder`).
- **Code Injection**: Never hardcode credentials into source code. Always instruct the system to read from `process.env`.
EOF

echo "Regole globali per Antigravity (Git, DevOps, Security) generate con successo in global/.agents/rules/"