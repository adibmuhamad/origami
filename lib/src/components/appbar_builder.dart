import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class AppBarBuilder {
  static PreferredSizeWidget build(BuildContext context, Map<String, dynamic> data) {
    return AppBar(
      key: data['key'] == null ? null : Key(data['key']),
      centerTitle: OrigamiWidgetUtil.parseCondition(data["centerTitle"]),
      automaticallyImplyLeading: OrigamiWidgetUtil.parseCondition(data["automaticallyImplyLeading"]) ?? true,
      leading: (data["leading"] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data["leading"])
          : null,
      title: (data["title"] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data["title"])
          : null,
      backgroundColor: OrigamiWidgetUtil.parseColor(data["backgroundColor"]),
      shadowColor: OrigamiWidgetUtil.parseColor(data["shadowColor"]),
      actions: (data["actions"] != null)
          ? OrigamiWidgetBuilder.buildWidgetsList(context, data["actions"])
          : null,
      elevation: data["elevation"]?.toDouble(),
      titleSpacing: data["titleSpacing"]?.toDouble(),
      flexibleSpace: data['flexibleSpace'] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(context, data["flexibleSpace"]),
      bottom: data['bottom'] == null
          ? null
          : PreferredSize(
              preferredSize: Size(
                  data['bottomWidth'] ?? 110.0, data['bottomHeight'] ?? 110.0),
              child: OrigamiWidgetBuilder.buildWidget(context, data["bottom"]),
            ),
    );
  }
}
