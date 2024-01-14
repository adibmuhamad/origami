import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';

class DividerBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Divider(
      key: data['key'] == null ? null : Key(data['key']),
      color: OrigamiWidgetUtil.parseColor(data['color']),
      endIndent: data["endIndent"]?.toDouble(),
      height: data["height"]?.toDouble(),
      thickness: data["thickness"]?.toDouble(),
      indent: data["indent"]?.toDouble(),
    );
  }
}
