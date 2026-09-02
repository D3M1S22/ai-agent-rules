# 📱 React Native Agent Context

Context payload optimized for high-performance React Native (Expo) applications.

**Key Paradigms Enforced:**
- **List Rendering**: Strict enforcement of `@shopify/flash-list` over standard `FlatList`.
- **Animations**: UI-thread animations via `react-native-reanimated` (`'worklet'`).
- **Storage**: Synchronous local storage via `react-native-mmkv` (strictly forbidding `AsyncStorage`).
