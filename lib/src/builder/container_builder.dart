import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_box_decoration.dart';
import 'package:origami/src/utils/origami_colors.dart';
import 'package:origami/src/utils/origami_edge_insets_geometry.dart';

// Example 1:
// { 
//   "container": {
//     "padding": {},
//     "margin": {},
//     "width": "400.0",
//     "height": "400.0",
//     "decoration": {},
//     "child": "child",
//   }
// }

class ContainerBuilder {
  static Widget buildContainer(Map<String, dynamic> data) {
    return Container(
      padding: OrigamiEdgeInsetsGeometry.parseEdgeInsetsGeometry(data['padding']),
      margin: OrigamiEdgeInsetsGeometry.parseEdgeInsetsGeometry(data['margin']),
      color: OrigamiColors.parseColor(data['color']),
      width: data['width']?.toDouble(),
      height: data['height']?.toDouble(),
      decoration: OrigamiBoxDecoration.parseBoxDecoration(data['decoration']),
      child: (data["child"] != null ) ? OrigamiWidgetBuilder.buildWidget(data["child"]) : null,
    );
  }
}
