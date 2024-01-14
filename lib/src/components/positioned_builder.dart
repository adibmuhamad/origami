import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';

class PositionedBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Positioned(
      key: data['key'] == null ? null : Key(data['key']),
      bottom: data["bottom"]?.toDouble(),
      height: data["height"]?.toDouble(),
      left: data["left"]?.toDouble(),
      right: data["right"]?.toDouble(),
      top: data["top"]?.toDouble(),
      width: data["width"]?.toDouble(),
      child: data['child'] == null
          ? const SizedBox()
          : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
