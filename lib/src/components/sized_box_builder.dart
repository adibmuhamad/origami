import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class SizedBoxBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return SizedBox(
      key: data['key'] == null ? null : Key(data['key']),
      width: OrigamiWidgetUtil.parseDouble(data['width']),
      height: OrigamiWidgetUtil.parseDouble(data['height']),
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data["child"], controllers: controllers ,onMethodCall: onMethodCall, onListeners: onListeners,)
          : null,
    );
  }
}
