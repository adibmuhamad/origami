import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class SingleChildScrollViewBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return SingleChildScrollView(
      key: data['key'] == null ? null : Key(data['key']),
      scrollDirection: (data["scrollDirection"] != null)
          ? (data["scrollDirection"] == 'vertical')
              ? Axis.vertical
              : Axis.horizontal
          : Axis.vertical,
      padding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['padding']),
      physics: OrigamiWidgetUtil.parseScrollPhysics(data['physics']),
      reverse: OrigamiWidgetUtil.parseCondition(data["reverse"]) ?? false,
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data["child"])
          : null,
    );
  }
}
