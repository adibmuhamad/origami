import 'package:flutter/material.dart';

// Example 1:
// { "textBaseline": "alphabetic" }

class OrigamiTextBaseline {
  static TextBaseline? parseTextBaseline(String? value) {
    if (value == null) return null;
    return value == "alphabetic" ? TextBaseline.alphabetic : TextBaseline.ideographic;
  }
}
