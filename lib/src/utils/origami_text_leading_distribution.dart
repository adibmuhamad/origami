import 'package:flutter/material.dart';

// Example 1:
// { "leadingDistribution": "even" }

class OrigamiTextLeadingDistribution {
  static TextLeadingDistribution? parseTextLeadingDistribution(String? value) {
    if (value == null) return null;
    return value == "even" ? TextLeadingDistribution.even : TextLeadingDistribution.proportional;
  }
}
