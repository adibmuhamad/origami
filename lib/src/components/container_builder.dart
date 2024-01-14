import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class ContainerBuilder {
  static Widget build(Map<String, dynamic> data) {
    return Container(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      padding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['padding']),
      margin: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['margin']),
      color: OrigamiWidgetUtil.parseColor(data['color']),
      width: data['width']?.toDouble(),
      height: data['height']?.toDouble(),
      decoration: OrigamiWidgetUtil.parseBoxDecoration(data['decoration']),
      child: (data["child"] != null ) ? OrigamiWidgetBuilder.buildWidget(data["child"]) : null,
    );
  }
}
