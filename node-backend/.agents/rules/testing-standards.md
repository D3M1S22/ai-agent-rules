# Testing & QA Standards
These rules apply to all backend testing tasks.
- **Framework**: Use Vitest for unit testing and Supertest for API integration tests.
- **Methodology**: Follow the Arrange-Act-Assert (AAA) pattern strictly.
- **Mocking**: Mock external dependencies (Stripe, AWS) using dependency injection. Do not hit real databases in unit tests.
