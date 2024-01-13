import 'package:flutter/material.dart';

// Example 1:
// { "locale": "en" }

class OrigamiLocale {
  static Locale? parseLocale(String? value) {
    if (value == null) return null;
    return Locale(value);
  }
}
