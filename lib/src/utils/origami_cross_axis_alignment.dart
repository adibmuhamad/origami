import 'package:flutter/material.dart';

// Example 1:
// { "crossAxisAlignment": "center" }

class OrigamiCrossAxisAlignment {
  static CrossAxisAlignment parseCrossAxisAlignment(String? value) {
    if (value == null) return CrossAxisAlignment.start;

    switch (value) {
      case "baseline": return CrossAxisAlignment.baseline;
      case "center": return CrossAxisAlignment.center;
      case "end": return CrossAxisAlignment.end;
      case "stretch": return CrossAxisAlignment.stretch;
      case "start": default: return CrossAxisAlignment.start;
    }
  }
}
