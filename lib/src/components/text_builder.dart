import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';

class TextBuilder {
  static Widget build(Map<String, dynamic> data) {
    return Text(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      data['text'] ?? '',
      textAlign: OrigamiWidgetUtil.parseTextAlign(data['textAlign']),
      maxLines: data["maxLines"]?.toInt(),
      overflow: OrigamiWidgetUtil.parseTextOverflow(data['overflow']),
      textDirection: OrigamiWidgetUtil.parseTextDirection(data['textDirection']),
      softWrap: OrigamiWidgetUtil.parseCondition(data["softWrap"]),
      textScaleFactor: data["textScaleFactor"]?.toDouble(),
      semanticsLabel: data["semanticsLabel"],
      style: OrigamiWidgetUtil.parseTextStyle(data['style']),
    );
  }
}
