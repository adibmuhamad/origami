import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_border_side.dart';
import 'package:origami/src/utils/origami_colors.dart';

// Example 1:
// {
//   "border": {
//     "boxBoder": "all",
//     "value": {
//       "color": "000000",
//       "style": "none",
//       "strokeAlign": "1.0",
//       "width": "1.0",
//     }
//   }
//  }

class OrigamiBorder {
  static Border? parseBorder(Map<String, dynamic>? data) {
    if (data == null) return null;

    switch (data['boxBoder']) {
      case 'symmetric':
        return Border.symmetric(
          vertical:
              OrigamiBorderSide.parseBorderSide(data['value']['vertical']),
          horizontal:
              OrigamiBorderSide.parseBorderSide(data['value']['horizontal']),
        );
      case 'all':
      default:
        return Border.all(
          color: OrigamiColors.parseColor(data['value']['color']) ??
              Colors.transparent,
          width: data['value']['width']?.toDouble() ?? 1.0,
          style: (data['value']['style'] == null)
              ? (data['value']['style'] == 'solid'
                  ? BorderStyle.solid
                  : BorderStyle.none)
              : BorderStyle.none,
          strokeAlign: data['value']['strokeAlign']?.toDouble() ?? 1.0,
        );
    }
  }
}
