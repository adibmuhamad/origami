import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_border.dart';
import 'package:origami/src/utils/origami_border_radius_geometry.dart';
import 'package:origami/src/utils/origami_colors.dart';

// Example 1:
// { "decoration": {
//   "color": "000000",
//   "border": {},
//   "borderRadius": {},
//   "shape": "rectangle",
// } }

class OrigamiBoxDecoration {
  static BoxDecoration? parseBoxDecoration(Map<String, dynamic>? data) {
    if (data == null) return null;
    return BoxDecoration(
      color: OrigamiColors.parseColor(data['color']),
      border: OrigamiBorder.parseBorder(data['border']),
      borderRadius: OrigamiBorderRadiusGeometry.parseBorderRadiusGeometry(
          data['borderRadius']),
      shape: (data['shape'] != null)
          ? data['shape'] == 'circle'
              ? BoxShape.circle
              : BoxShape.rectangle
          : BoxShape.rectangle,
    );
  }
}
