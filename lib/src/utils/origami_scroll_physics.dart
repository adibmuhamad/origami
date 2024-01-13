import 'package:flutter/material.dart';

// Example 1:
// { "physics": "never" }

class OrigamiScrollPhysics {
  static ScrollPhysics? parseScrollPhysics(String? value) {
    if (value == null) return null;

    switch (value) {
      case "never": return const NeverScrollableScrollPhysics();
      case "bounce": return const BouncingScrollPhysics();
      case "always": return const AlwaysScrollableScrollPhysics();
      case "clamping": return const ClampingScrollPhysics();
      default: return null;
    }
  }
}
