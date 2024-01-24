import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class SpacerBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return Spacer(
      key: data['key'] == null ? null : Key(data['key']),
      flex: OrigamiWidgetUtil.parseInt(data["flex"]) ?? 1,
    );
  }
}
