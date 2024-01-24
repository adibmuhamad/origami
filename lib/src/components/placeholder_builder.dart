import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class PlaceholderBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return Placeholder(
      key: data['key'] == null ? null : Key(data['key']),
      color: OrigamiWidgetUtil.parseColor(data["color"]) ?? Colors.transparent,
      strokeWidth: OrigamiWidgetUtil.parseDouble(data["strokeWidth"]) ?? 2.0,
      fallbackWidth:
          OrigamiWidgetUtil.parseDouble(data["fallbackWidth"]) ?? 400.0,
      fallbackHeight:
          OrigamiWidgetUtil.parseDouble(data["fallbackHeight"]) ?? 400.0,
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data["child"], controllers: controllers ,onMethodCall: onMethodCall, onListeners: onListeners,)
          : null,
    );
  }
}
