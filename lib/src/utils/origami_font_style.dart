import 'package:flutter/material.dart';

// Example 1:
// { "fontStyle": "italic" }

class OrigamiFontStyle {
  static FontStyle parseFontStyle(String? value) {
    if (value == null) return FontStyle.normal;
    return (value == 'italic') ? FontStyle.italic : FontStyle.normal;
  }
}