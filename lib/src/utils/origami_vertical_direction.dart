import 'package:flutter/material.dart';

// Example 1:
// { "verticalDirection": "down" }

class OrigamiVerticalDirection {
  static VerticalDirection parseVerticalDirection(String? value) {
    return value == "up" ? VerticalDirection.up : VerticalDirection.down;
  }
}
