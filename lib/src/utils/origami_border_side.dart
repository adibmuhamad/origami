import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_colors.dart';

// Example 1:
// { 
//   "side": {
//     "color": "000000",
//     "width": "1.0",
//     "style": "none",
//     "strokeAlign": "1.0",
//   }
//  }

class OrigamiBorderSide {
  static BorderSide parseBorderSide(Map<String, dynamic>? data) {
    return (data == null)
        ? BorderSide.none
        : BorderSide(
            color:
                OrigamiColors.parseColor(data['color']) ?? Colors.transparent,
            width: data['width']?.toDouble() ?? 1.0,
            style: (data['style'] == null)
                ? (data['style'] == 'solid'
                    ? BorderStyle.solid
                    : BorderStyle.none)
                : BorderStyle.none,
            strokeAlign: data['strokeAlign']?.toDouble() ?? 1.0,
          );
  }
}
