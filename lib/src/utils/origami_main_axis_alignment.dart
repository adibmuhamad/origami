import 'package:flutter/material.dart';

// Example 1:
// { "mainAxisAlignment": "center" }

class OrigamiMainAxisAlignment {
  static MainAxisAlignment parseMainAxisAlignment(String? value) {
   if (value == null) return MainAxisAlignment.start;

    switch (value) {
      case "center": return MainAxisAlignment.center;
      case "end": return MainAxisAlignment.end;
      case "spaceAround": return MainAxisAlignment.spaceAround;
      case "stretch": return MainAxisAlignment.spaceBetween;
      case "spaceEvenly": return MainAxisAlignment.spaceEvenly;
      case "start": default: return MainAxisAlignment.start;
    }
  }
}
