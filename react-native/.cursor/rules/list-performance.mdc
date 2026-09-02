---
description: Strict guidelines for rendering large lists and feeds in React Native
globs: "app/**/*.tsx, components/**/*.tsx"
alwaysApply: false
---
# React Native List Performance Standards

- **Component Selection**: NEVER use `ScrollView` or standard `FlatList` for large datasets. You MUST use `@shopify/flash-list`.
- **Estimation**: Always provide an accurate `estimatedItemSize` to `FlashList` to prevent layout thrashing and blank space during fast scrolls.
- **Memoization**: 
  - The `renderItem` function MUST be wrapped in a `useCallback`.
  - The individual list item component MUST be wrapped in `React.memo`. 
  - Provide a custom `arePropsEqual` comparison function to `React.memo` if the item receives complex object props.
- **Key Extraction**: Always provide a stable, unique `keyExtractor`. Never use array indices as keys.
- **Anonymous Functions**: Strictly forbid inline arrow functions within the `FlashList` props (e.g., `ListEmptyComponent`, `ItemSeparatorComponent`). Extract them to the component scope.