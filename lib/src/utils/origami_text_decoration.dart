import 'package:flutter/material.dart';

// Example 1:
// { "decoration": "none" }

class OrigamiTextDecoration {
  static TextDecoration? parseTextDecoration(String? value) {
    if (value == null) return null;
    switch (value) {
      case "lineThrough": return TextDecoration.lineThrough;
      case "overline": return TextDecoration.overline;
      case "underline": return TextDecoration.underline;
      case "none": default: return TextDecoration.none;
    }
  }
}
