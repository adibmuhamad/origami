import 'package:flutter/material.dart';

class OrigamiColors {
  static Color? parseColor(String? value) {
   try {
      if (value != null && value.isNotEmpty) {
        // Remove the '#' character if present
        String hexColor = value.startsWith('#') ? value.substring(1) : value;

        // Parse the hex color value and add the alpha channel
        return Color(int.parse('0xFF$hexColor'));
      }
    } catch (e) {
      debugPrint('Error parsing color: $e');
    }
    return null;
  }
}
