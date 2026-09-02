---
description: Input sanitization, validation schemas, and endpoint security
globs: "src/routes/**/*.ts, src/controllers/**/*.ts"
alwaysApply: true
---
# Backend Security & Validation

- **Schema Validation**: Every incoming request (`body`, `query`, `params`) MUST be strictly validated using `Zod`. Do not process raw `req.body` directly.
- **DTOs (Data Transfer Objects)**: Infer TypeScript types directly from Zod schemas (`type CreateUserDTO = z.infer<typeof CreateUserSchema>`).
- **Authentication**: 
  - Use short-lived stateless JWTs for access, paired with cryptographically secure, opaque refresh tokens stored in HTTP-Only, Secure, SameSite=Strict cookies.
  - Reject requests globally if they lack required `Authorization` headers before they hit controller logic.
- **SQL Injection Prevention**: Ensure all raw SQL queries (if used alongside an ORM) utilize parameterized inputs. Never interpolate string variables into database queries.