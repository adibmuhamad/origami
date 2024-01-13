import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_colors.dart';

// Example 1:
// { 
//   "placeholder": {
//     "color": "000000",
//     "strokeWidth": "2.0",
//     "fallbackWidth": "400.0",
//     "fallbackHeight": "400.0",
//     "child": "child",
//   }
// }

class PlaceholderBuilder {
  static Widget buildPlaceholder(Map<String, dynamic> data) {
    return Placeholder(
      color: OrigamiColors.parseColor(data["color"]) ?? Colors.transparent,
      strokeWidth: data["strokeWidth"]?.toDouble() ?? 2.0,
      fallbackWidth: data["fallbackWidth"]?.toDouble() ?? 400.0,
      fallbackHeight: data["fallbackHeight"]?.toDouble() ?? 400.0,
      child: (data["child"] != null) ? OrigamiWidgetBuilder.buildWidget(data["child"]) : null,
    );
  }
}
