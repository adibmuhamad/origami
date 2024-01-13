import 'package:flutter/material.dart';

// Example 1:
// { "borderRadius": { "borderRadiusGeometry": "zero" } }

// Example 2:
// { "borderRadius": { "borderRadiusGeometry": "all", "value": "12.0" } }

// Example 3:
// { "borderRadius": { "borderRadiusGeometry": "circular", "value": "12.0" } }

// Example 4:
// { "borderRadius": { "borderRadiusGeometry": "horizontal", "value": { "left": "12.0", "right": "12.0" } } }

// Example 5:
// { "borderRadius": { "borderRadiusGeometry": "only", "value": { "topLeft": "12.0", "topRight": "12.0", "bottomLeft": "12.0", "bottomRight": "12.0" } } }


class OrigamiBorderRadiusGeometry {
  static BorderRadiusGeometry parseBorderRadiusGeometry(
      Map<String, dynamic>? data) {
    if (data == null) return BorderRadius.zero;

    BorderRadius borderRadius = BorderRadius.zero;
    switch (data['borderRadiusGeometry']) {
      case 'zero':
        borderRadius = BorderRadius.zero;
        break;
      case 'all':
        borderRadius = BorderRadius.all(
            Radius.circular(double.parse(data['value'] ?? '0')));
        break;
      case 'circular':
        borderRadius =
            BorderRadius.circular(double.parse(data['value'] ?? '0'));
        break;
      case 'horizontal':
        borderRadius = BorderRadius.horizontal(
            left: Radius.circular(double.parse(data['value']['left'] ?? '0')),
            right: Radius.circular(double.parse(data['value']['left'] ?? '0')));
        break;
      case 'only':
        borderRadius = BorderRadius.only(
          topLeft:
              Radius.circular(double.parse(data['value']['topLeft'] ?? '0')),
          topRight:
              Radius.circular(double.parse(data['value']['topRight'] ?? '0')),
          bottomLeft:
              Radius.circular(double.parse(data['value']['bottomLeft'] ?? '0')),
          bottomRight: Radius.circular(
              double.parse(data['value']['bottomRight'] ?? '0')),
        );

        break;
    }

    return borderRadius;
  }
}
