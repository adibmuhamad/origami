import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';

class GestureDetectorBuilder {
  static Widget build(
    BuildContext context,
    Map<String, dynamic> data, {
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    return GestureDetector(
      key: data['key'] == null ? null : Key(data['key']),
      onTap: data["onTap"] != null
          ? () {
              if (onMethodCall != null) {
                onMethodCall(data['onTap']);
              }
            }
          : null,
      child: data['child'] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(
              context,
              data['child'],
              controllers: controllers,
              onMethodCall: onMethodCall,
              onListeners: onListeners,
            ),
    );
  }
}
