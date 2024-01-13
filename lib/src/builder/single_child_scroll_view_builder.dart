import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_edge_insets_geometry.dart';
import 'package:origami/src/utils/origami_scroll_physics.dart';

// Example 1:
// {
//   "singleChildScrollView": {
//     "scrollDirection": "vertical",
//     "padding": {},
//     "physics": "never",
//     "reverse": "false",
//     "child": "child",
//   }
// }

class SingleChildScrollViewBuilder {
  static Widget buildSingleChildScrollView(Map<String, dynamic> data) {
    return SingleChildScrollView(
      scrollDirection: (data["scrollDirection"] != null)
          ? (data["scrollDirection"] == 'vertical')
              ? Axis.vertical
              : Axis.horizontal
          : Axis.vertical,
      padding:
          OrigamiEdgeInsetsGeometry.parseEdgeInsetsGeometry(data['padding']),
      physics: OrigamiScrollPhysics.parseScrollPhysics(data['physics']),
      reverse: data["reverse"] == 'true',
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["child"])
          : null,
    );
  }
}
