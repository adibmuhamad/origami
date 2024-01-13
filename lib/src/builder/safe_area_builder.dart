import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';

// Example 1:
// {
//   "safeArea": {
//     "child": "child",
//   }
// }

class SafeAreaBuilder {
  static Widget buildSafeArea(Map<String, dynamic> data) {
    return SafeArea(
      child: OrigamiWidgetBuilder.buildWidget(data["child"]),
    );
  }
}
