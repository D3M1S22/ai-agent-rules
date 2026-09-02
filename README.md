# 🧠 AI Agent Rules Hub

Welcome to the central nervous system for our AI coding assistants. This repository enforces coding standards, progressive disclosure workflows, and autonomous agent delegation across our monorepo.

## 🏗 Architecture
This repository provides **Dual-IDE Compatibility**:
- **Cursor**: Utilizes `.cursor/rules/*.mdc` for reactive, file-centric prompting based on globs.
- **Google Antigravity**: Utilizes the `.agents/` ecosystem (Rules, Workflows, Skills, Agents, Memory) for proactive, Spec-Driven Development (SDD) and multi-agent orchestration.

## 📂 Directory Structure
- `/global` - Universal rules (Git, DevOps, Security, QA Engineer) applied to ALL projects.
- `/node-backend` - Strict Node.js, Fastify, and Drizzle/Prisma ORM standards.
- `/react-native` - Mobile performance (FlashList, Reanimated), local storage, and UI guidelines.
- `/react-web` - React SPA, Tailwind CSS, and TanStack data fetching standards.
- `/scripts` - Automation utilities for synchronizing rules into your local projects.

## 🚀 Quick Start
Do **not** clone this repository directly into your projects using git clone. Instead, use the provided extraction script to selectively merge the `global` rules with your target stack. 
See `scripts/README.md` for detailed instructions.
