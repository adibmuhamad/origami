import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class AppBarBuilder {
  static PreferredSizeWidget build(Map<String, dynamic> data) {
    return AppBar(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      centerTitle: OrigamiWidgetUtil.parseCondition(data["centerTitle"]),
      automaticallyImplyLeading: OrigamiWidgetUtil.parseCondition(data["automaticallyImplyLeading"]) ?? true,
      leading: (data["leading"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["leading"])
          : null,
      title: (data["title"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["title"])
          : null,
      backgroundColor: OrigamiWidgetUtil.parseColor(data["backgroundColor"]),
      shadowColor: OrigamiWidgetUtil.parseColor(data["shadowColor"]),
      actions: (data["actions"] != null)
          ? OrigamiWidgetBuilder.buildWidgetsList(data["actions"])
          : null,
      elevation: data["elevation"]?.toDouble(),
      titleSpacing: data["titleSpacing"]?.toDouble(),
      flexibleSpace: data['flexibleSpace'] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(data["flexibleSpace"]),
      bottom: data['bottom'] == null
          ? null
          : PreferredSize(
              preferredSize: Size(
                  data['bottomWidth'] ?? 110.0, data['bottomHeight'] ?? 110.0),
              child: OrigamiWidgetBuilder.buildWidget(data["bottom"]),
            ),
    );
  }
}
