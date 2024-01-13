import 'package:flutter/material.dart';

// Example 1:
// { "fontWeight": "bold" }

class OrigamiFontWeight {
  static FontWeight? parseFontWeight(String? fontWeight) {
    switch (fontWeight) {
      case 'bold': return FontWeight.bold;
      case 'normal': return FontWeight.normal;
      case 'w100': return FontWeight.w100;
      case 'w200': return FontWeight.w200;
      case 'w300': return FontWeight.w300;
      case 'w400': return FontWeight.w400;
      case 'w500': return FontWeight.w500;
      case 'w600': return FontWeight.w600;
      case 'w700': return FontWeight.w700;
      case 'w800': return FontWeight.w800;
      case 'w900': return FontWeight.w900;
      default:
        return null;
    }
  }
}


