import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class ElevatedButtonBuilder {
  static Widget build(
    BuildContext context,
    Map<String, dynamic> data, {
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    return ElevatedButton(
      key: data['key'] == null ? null : Key(data['key']),
      onPressed: data["onPressed"] != null
          ? () {
              if (onMethodCall != null) {
                onMethodCall(data['onPressed']);
              }
            }
          : null,
      onLongPress: data["onLongPress"] != null
          ? () {
              if (onMethodCall != null) {
                onMethodCall(data['onLongPress']);
              }
            }
          : null,
      style: OrigamiWidgetUtil.parseButtonStyle(data['style']),
      autofocus: OrigamiWidgetUtil.parseCondition(data['autoFocus']) ?? false,
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(
              context,
              data["child"],
              controllers: controllers,
              onMethodCall: onMethodCall,
              onListeners: onListeners,
            )
          : null,
    );
  }
}
