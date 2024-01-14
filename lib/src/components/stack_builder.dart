import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class StackBuilder {
  static Widget build(Map<String, dynamic> data) {
    return Stack(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      alignment: OrigamiWidgetUtil.parseAlignmentGeometry(data['alignment']) ?? AlignmentDirectional.topStart,
      fit: OrigamiWidgetUtil.parseStackFit(data['fit']) ?? StackFit.loose,
      textDirection:  OrigamiWidgetUtil.parseTextDirection(data['textDirection']),
      clipBehavior: OrigamiWidgetUtil.parseClip(data['clipBehavior']),
      children: OrigamiWidgetBuilder.buildWidgetsList(data["children"]),
    );
  }
}
