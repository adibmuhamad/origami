import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class WrapBuilder {
  static Widget build(Map<String, dynamic> data) {
    return Wrap(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      spacing: data["spacing"]?.toDouble() ?? 0.0,
      runSpacing: data["runSpacing"]?.toDouble() ?? 0.0,
      alignment: OrigamiWidgetUtil.parseWrapAlignment(data['alignment']) ??
          WrapAlignment.start,
      crossAxisAlignment:
          OrigamiWidgetUtil.parseWrapCrossAlignment(data['crossAxisAlignment']),
      children: OrigamiWidgetBuilder.buildWidgetsList(data['children']),
    );
  }
}
