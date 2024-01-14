import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class CardBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Card(
      key: data['key'] == null ? null : Key(data['key']),
      semanticContainer:
          OrigamiWidgetUtil.parseCondition(data["semanticContainer"]) ?? true,
      elevation: OrigamiWidgetUtil.parseDouble(data["elevation"]),
      color: OrigamiWidgetUtil.parseColor(data['color']),
      margin: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['margin']),
      shape: data["shape"] == null
          ? null
          : RoundedRectangleBorder(
              borderRadius: OrigamiWidgetUtil.parseBorderRadiusGeometry(
                  data["shape"]["borderRadius"]),
              side: OrigamiWidgetUtil.parseBorderSide(data["shape"]["side"]),
            ),
      child: (data['child'] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data['child'])
          : null,
    );
  }
}
