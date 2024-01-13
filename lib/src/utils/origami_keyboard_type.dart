import 'package:flutter/material.dart';

// Example 1:
// { "keyboardType": "number" }

class OrigamiKeyboardType {
  static TextInputType? parseKeyboardType(String? value) {
   switch (value) {
      case 'text':
        return TextInputType.text;
      case 'number':
        return TextInputType.number;
      case 'phone':
        return TextInputType.phone;
      case 'email':
        return TextInputType.emailAddress;
      default:
        return null;
    }
  }
}


