import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class PositionedBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Positioned(
      key: data['key'] == null ? null : Key(data['key']),
      bottom: OrigamiWidgetUtil.parseDouble(data["bottom"]),
      height: OrigamiWidgetUtil.parseDouble(data["height"]),
      left: OrigamiWidgetUtil.parseDouble(data["left"]),
      right: OrigamiWidgetUtil.parseDouble(data["right"]),
      top: OrigamiWidgetUtil.parseDouble(data["top"]),
      width: OrigamiWidgetUtil.parseDouble(data["width"]),
      child: data['child'] == null
          ? const SizedBox()
          : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
