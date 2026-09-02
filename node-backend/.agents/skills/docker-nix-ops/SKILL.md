---
name: devops-orchestrator
description: Specialized knowledge for configuring Dockerfiles, docker-compose, and Nix flakes for local and production environments.
---
# DevOps & Infrastructure Payload

- **Nix Flakes**: Maintain pure and reproducible development shells. Add database CLIs, Node.js versions, and build tools here instead of global installs.
- **Docker/OrbStack Compatibility**: Ensure Dockerfiles use multi-stage builds. Use `node:18-alpine` (or current LTS) to reduce attack surface and image size.
- **Compose**: Structure `docker-compose.yml` to include the backend API, Postgres/MySQL database, and a Redis instance for caching. Map volumes for persistent local data.
- **Healthchecks**: Always include `HEALTHCHECK` instructions in Dockerfiles to ensure orchestration tools know when the API is ready to accept traffic.
