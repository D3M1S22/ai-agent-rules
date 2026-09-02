---
description: Best practices for fluid, 60/120fps mobile animations
globs: "components/**/*.tsx, app/**/*.tsx"
alwaysApply: false
---
# React Native Animation Standards

- **Core Library**: Use `react-native-reanimated` (v3+) exclusively for complex physics-based animations. Do not use the legacy `Animated` API from `react-native`.
- **UI Thread Execution**: Use the `'worklet'` directive for all animation functions to ensure they run directly on the UI thread, completely bypassing the JavaScript bridge.
- **Shared Values**: Manage animation state exclusively via `useSharedValue` and derive styles using `useAnimatedStyle`.
- **Transitions**: Use `react-native-reanimated` Layout Animations (e.g., `FadeIn`, `SlideOutRight`) for mount/unmount transitions instead of manually orchestrating opacities.