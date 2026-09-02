---
name: database-architect
description: Expert knowledge in Prisma/Drizzle ORM schema design, SQL migrations, and query optimization.
---
# Database Architect Payload

- **Schema Design**: Enforce normalization. Use UUIDs or CUIDs for primary keys to prevent enumeration attacks.
- **Relations**: Define explicit foreign key relations with `onDelete: CASCADE` or `RESTRICT` depending on business logic.
- **Indexing**: Always add indexes (`@@index`) on foreign keys, email columns, or frequently queried fields.
- **Migrations**: Never alter the database directly. Always generate an SQL migration file using the ORM CLI (e.g., `npx prisma migrate dev --name <description>`).
