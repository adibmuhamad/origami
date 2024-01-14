import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class ContainerBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Container(
      key: data['key'] == null ? null : Key(data['key']),
      padding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['padding']),
      margin: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['margin']),
      color: OrigamiWidgetUtil.parseColor(data['color']),
      width: OrigamiWidgetUtil.parseDouble(data['width']),
      height: OrigamiWidgetUtil.parseDouble(data['height']),
      decoration: OrigamiWidgetUtil.parseBoxDecoration(data['decoration']),
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data["child"])
          : null,
    );
  }
}
