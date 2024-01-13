import 'package:flutter/material.dart';

// Example 1:
// { "padding": { "edgeInsetsGeometry": "zero" } }

// Example 2:
// { "padding": { "edgeInsetsGeometry": "all", "value": "14.0" } }

// Example 3:
// { "padding": { "edgeInsetsGeometry": "only", "value": { "left": "14.0", "right": "14.0", "top": "14.0", "bottom": "14.0", } } }

// Example 4:
// { "padding": { "edgeInsetsGeometry": "symmetric", "value": { "vertical": "14.0", "horizontal": "14.0" } } }

class OrigamiEdgeInsetsGeometry {
  static EdgeInsetsGeometry? parseEdgeInsetsGeometry(Map<String, dynamic>? data) {
    if (data == null) return null;

    EdgeInsetsGeometry edgeInsetsGeometry = EdgeInsets.zero;
    switch (data['edgeInsetsGeometry']) {
      case 'zero':
        edgeInsetsGeometry = EdgeInsets.zero;
        break;
      case 'all':
        edgeInsetsGeometry = EdgeInsets.all(double.parse(data['value'] ?? '0'));
        break;
      case 'only':
        edgeInsetsGeometry = EdgeInsets.only(
            left: double.parse(data['value']['left'] ?? '0'),
            right: double.parse(data['value']['right'] ?? '0'),
            top: double.parse(data['value']['top'] ?? '0'),
            bottom: double.parse(data['value']['bottom'] ?? '0'));
        break;
      case 'symmetric':
        edgeInsetsGeometry = EdgeInsets.symmetric(
            vertical: double.parse(data['value']['vertical'] ?? '0'),
            horizontal: double.parse(data['value']['horizontal'] ?? '0'));
        break;
    }

    return edgeInsetsGeometry;
  }
}
