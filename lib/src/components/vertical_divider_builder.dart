import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';

class VerticalDividerBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return VerticalDivider(
      key: data['key'] == null ? null : Key(data['key']),
      color: OrigamiWidgetUtil.parseColor(data['color']),
      endIndent: OrigamiWidgetUtil.parseDouble(data["endIndent"]),
      width: OrigamiWidgetUtil.parseDouble(data["width"]),
      thickness: OrigamiWidgetUtil.parseDouble(data["thickness"]),
      indent: OrigamiWidgetUtil.parseDouble(data["indent"]),
    );
  }
}
