import 'package:flutter/material.dart';

// Example 1:
// { "overflow": "clip" }

class OrigamiTextOverflow {
  static TextOverflow? parseTextOverflow(String? value) {
    if (value == null) return null;
    switch (value) {
      case "clip": return TextOverflow.clip;
      case "ellipsis": return TextOverflow.ellipsis;
      case "fade": return TextOverflow.fade;
      case "visible": default: return TextOverflow.visible;
    }
  }
}
