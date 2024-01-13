import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_border_radius_geometry.dart';
import 'package:origami/src/utils/origami_border_side.dart';
import 'package:origami/src/utils/origami_colors.dart';
import 'package:origami/src/utils/origami_edge_insets_geometry.dart';
import 'package:origami/src/utils/origami_text_style.dart';

// Example 1:
// { 
//   "style": {
//     "textStyle": {},
//     "backgroundColor": "000000",
//     "foregroundColor": "000000",
//     "padding": {},
//     "borderRadius": {},
//     "side": {},
//   }
//  }

class OrigamiButtonStyle {
  static ButtonStyle? parseButtonStyle(Map<String, dynamic>? data) {
    if (data == null) return null;

    return ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle?>(
          OrigamiTextStyle.parseTextStyle(data['textStyle'])),
      backgroundColor: MaterialStateProperty.all<Color?>(
          OrigamiColors.parseColor(data['backgroundColor'])),
      foregroundColor: MaterialStateProperty.all<Color?>(
          OrigamiColors.parseColor(data['foregroundColor'])),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
          OrigamiEdgeInsetsGeometry.parseEdgeInsetsGeometry(data['padding'])),
      shape: MaterialStateProperty.all<OutlinedBorder?>(
        RoundedRectangleBorder(
          borderRadius: OrigamiBorderRadiusGeometry.parseBorderRadiusGeometry(
              data['borderRadius']),
          side: OrigamiBorderSide.parseBorderSide(data['side']),
        ),
      ),
    );
  }
}
