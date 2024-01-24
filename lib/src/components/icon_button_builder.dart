import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class IconButtonBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return IconButton(
      key: data['key'] == null ? null : Key(data['key']),
      icon: OrigamiWidgetBuilder.buildWidget(context, data["icon"], controllers: controllers ,onMethodCall: onMethodCall, onListeners: onListeners,),
      onPressed: data["onPressed"] != null
          ? () {
              if (onMethodCall != null) {
                onMethodCall(data['onPressed']);
              }
            }
          : null,
      style: OrigamiWidgetUtil.parseButtonStyle(data['style']),
      autofocus: OrigamiWidgetUtil.parseCondition(data["autoFocus"]) ?? false,
    );
  }
}
