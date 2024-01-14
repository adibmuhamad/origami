import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';


class ColumnBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Column(
     key: data['key'] == null ? null : Key(data['key']),
      mainAxisAlignment: OrigamiWidgetUtil.parseMainAxisAlignment(data["mainAxisAlignment"]),
      crossAxisAlignment: OrigamiWidgetUtil.parseCrossAxisAlignment(data["crossAxisAlignment"]),
      mainAxisSize: OrigamiWidgetUtil.parseMainAxisSize(data["mainAxisSize"]),
      textDirection: OrigamiWidgetUtil.parseTextDirection(data["textDirection"]),
      verticalDirection: OrigamiWidgetUtil.parseVerticalDirection(data["verticalDirection"]),
      textBaseline: OrigamiWidgetUtil.parseTextBaseline(data["textBaseline"]),
      children: OrigamiWidgetBuilder.buildWidgetsList(context, data["children"]),
    );
  }
}
