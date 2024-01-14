import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';

class FlexibleBuilder {
  static Widget build(Map<String, dynamic> data) {
     return Flexible(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      flex: data["flex"]?.toInt() ?? 1,
      child: data['child'] == null ? const SizedBox() : OrigamiWidgetBuilder.buildWidget(data['child']),
    );
  }
}
