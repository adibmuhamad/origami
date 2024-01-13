import 'package:flutter/material.dart';
import 'package:origami/src/builder/appbar_builder.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';

// Example 1:
// {
//   "scaffold": {
//     "mainAxisAlignment": "center",
//     "crossAxisAlignment": "center",
//     "mainAxisSize": "min",
//     "textDirection": "ltr",
//     "verticalDirection": "down",
//     "textBaseline": "alphabetic",
//     "children": "children",
//   }
// }

class ScaffoldBuilder {
  static Widget buildScaffold(Map<String, dynamic> data) {
    return Scaffold(
      appBar: (data['appBar'] != null) ? AppBarBuilder.buildAppBar(data['appBar']) : null,
      body: (data["body"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["body"])
          : null,
      floatingActionButton: (data["floatingActionButton"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["floatingActionButton"])
          : null,
    );
  }
}
