---
description: Clean architecture implementation for Node.js REST APIs
globs: "src/**/*.ts"
alwaysApply: true
---
# Node.js Clean Architecture Standards

- **Strict Layering Rule**: 
  - **Controllers**: Handle HTTP protocols, extract params/body, return standard HTTP responses. NO BUSINESS LOGIC.
  - **Services**: Contain pure business rules, transaction coordination, and domain logic. Unaware of HTTP contexts (no `req` or `res` objects).
  - **Repositories**: Exclusively handle database queries, ORM operations (Prisma/Drizzle), and data mapping.
- **Dependency Injection**: Pass repositories into services, and services into controllers. Avoid hardcoded singletons to ensure modular testability.
- **Domain Exceptions**: Throw custom typed errors (`NotFoundError`, `BadRequestError`) in Services, and let a global exception filter/middleware catch them and translate them to HTTP status codes.