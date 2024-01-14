import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';

class VerticalDividerBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return VerticalDivider(
      key: data['key'] == null ? null : Key(data['key']),
      color: OrigamiWidgetUtil.parseColor(data['color']),
      endIndent: data["endIndent"]?.toDouble(),
      width: data["width"]?.toDouble(),
      thickness: data["thickness"]?.toDouble(),
      indent: data["indent"]?.toDouble(),
    );
  }
}
