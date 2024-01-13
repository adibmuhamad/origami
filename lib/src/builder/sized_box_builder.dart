import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';

// Example 1:
// { 
//   "sizedBox": {
//     "width": "400.0",
//     "height": "400.0",
//     "child": "child",
//   }
// }

class SizedBoxBuilder {
  static Widget buildSizedBox(Map<String, dynamic> data) {
    return SizedBox(
      width: data['width']?.toDouble(),
      height: data['height']?.toDouble(),
      child: (data["child"] != null) ? OrigamiWidgetBuilder.buildWidget(data["child"]) : null,
    );
  }
}
