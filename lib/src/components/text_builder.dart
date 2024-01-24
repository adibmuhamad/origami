import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';

class TextBuilder {
  static Widget build(
    BuildContext context,
    Map<String, dynamic> data, {
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    return Text(
      data['text'] ?? '',
      key: data['key'] == null ? null : Key(data['key']),
      textAlign: OrigamiWidgetUtil.parseTextAlign(data['textAlign']),
      maxLines: OrigamiWidgetUtil.parseInt(data["maxLines"]),
      overflow: OrigamiWidgetUtil.parseTextOverflow(data['overflow']),
      textDirection:
          OrigamiWidgetUtil.parseTextDirection(data['textDirection']),
      softWrap: OrigamiWidgetUtil.parseCondition(data["softWrap"]),
      textScaleFactor: OrigamiWidgetUtil.parseDouble(data["textScaleFactor"]),
      semanticsLabel: data["semanticsLabel"],
      style: OrigamiWidgetUtil.parseTextStyle(data['style']),
    );
  }
}
