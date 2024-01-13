import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_colors.dart';

// Example 1:
// { 
//   "appBar": {
//     "leading": {},
//     "title": {},
//     "backgroundColor": "000000",
//     "shadowColor": "000000",
//     "actions": [],
//     "elevation": "0",
//     "titleSpacing": "0",
//   }
// }

class AppBarBuilder {
  static PreferredSizeWidget buildAppBar(Map<String, dynamic> data) {
     return AppBar(
      leading: (data["leading"] != null) ? OrigamiWidgetBuilder.buildWidget(data["leading"]) : null,
      title: (data["title"] != null) ? OrigamiWidgetBuilder.buildWidget(data["title"]) : null,
      backgroundColor: OrigamiColors.parseColor(data["backgroundColor"]),
      shadowColor: OrigamiColors.parseColor(data["shadowColor"]),
      actions: (data["actions"] != null) ? OrigamiWidgetBuilder.buildWidgetsList(data["actions"]) : null,
      elevation: data["elevation"]?.toDouble(),
      titleSpacing: data["titleSpacing"]?.toDouble(),
    );
  }
}
