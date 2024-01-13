import 'package:flutter/material.dart';

// Example 1:
// { "mainAxisSize": "max" }

class OrigamiMainAxisSize {
  static MainAxisSize parseMainAxisSize(String? value) {
    return value == "max" ? MainAxisSize.max : MainAxisSize.min;
  }
}
