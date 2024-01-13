import 'package:flutter/material.dart';

// Example 1:
// { "textDirection": "ltr" }

class OrigamiTextDirection {
  static TextDirection? parseTextDirection(String? value) {
    if (value == null) return null;
    return value == "ltr" ? TextDirection.ltr : TextDirection.rtl;
  }
}
