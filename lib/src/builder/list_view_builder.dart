import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_edge_insets_geometry.dart';
import 'package:origami/src/utils/origami_scroll_physics.dart';

// Example 1:
// {
//   "listView": {
//     "scrollDirection": "vertical",
//     "padding": {},
//     "physics": "never",
//     "reverse": "false",
//     "child": "child",
//   }
// }

class ListViewBuilder {
  static Widget buildListView(Map<String, dynamic> data) {
    return ListView(
      scrollDirection: (data["scrollDirection"] != null)
          ? (data["scrollDirection"] == 'vertical')
              ? Axis.vertical
              : Axis.horizontal
          : Axis.vertical,
      padding:
          OrigamiEdgeInsetsGeometry.parseEdgeInsetsGeometry(data['padding']),
      physics: OrigamiScrollPhysics.parseScrollPhysics(data['physics']),
      reverse: data["reverse"] == 'true',
      children: OrigamiWidgetBuilder.buildWidgetsList(data["children"]),
    );
  }
}
