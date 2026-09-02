---
description: Local persistence, caching, and secure token management
globs: "store/**/*.ts, lib/**/*.ts, services/**/*.ts"
alwaysApply: false
---
# React Native Storage Management

- **Key-Value Storage**: NEVER use `@react-native-async-storage/async-storage`. It is slow and asynchronous. Use `react-native-mmkv` for high-performance, synchronous, unencrypted key-value storage (e.g., user preferences, theme state).
- **Global State Hydration**: When persisting `Zustand` stores, strictly use `react-native-mmkv` as the custom storage engine for the `persist` middleware.
- **Secure Storage**: Use `expo-secure-store` exclusively for sensitive credentials (JWTs, OAuth tokens, PII). Never store sensitive data in MMKV or plain text.