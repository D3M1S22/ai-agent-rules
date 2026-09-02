# Scientific Debugging Workflow

When invoked via `/speckit.debug`, execute this exact sequence to resolve issues without guessing:

1. **Information Gathering**: Ask the user for the stack trace, error message, or unexpected behavior. Use `run_command` to check server logs if necessary.
2. **Hypothesis Generation**: Formulate up to 3 technical hypotheses about the root cause based on the current architecture.
3. **Validation**: Use `view_file` to inspect the relevant components, state managers (Zustand), or API boundaries involved in the hypotheses.
4. **Action Plan**: Present the verified root cause and a step-by-step resolution plan to the user.
5. **Execution**: Await user approval, then execute the fix and verify it via terminal commands.
