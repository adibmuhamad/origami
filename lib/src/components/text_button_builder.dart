import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class TextButtonBuilder {
  static Widget build(
    BuildContext context,
    Map<String, dynamic> data, {
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    return TextButton(
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
      autofocus: OrigamiWidgetUtil.parseCondition(data["autofocus"]) ?? false,
      child: data['child'] == null
          ? const SizedBox()
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
