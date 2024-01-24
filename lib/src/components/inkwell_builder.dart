import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class InkWellBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return InkWell(
      key: data['key'] == null ? null : Key(data['key']),
      borderRadius: OrigamiWidgetUtil.parseBorderRadius(data),
      onTap: data["onTap"] != null
          ? () {
              if (onMethodCall != null) {
                onMethodCall(data['onTap']);
              }
            }
          : null,
      child: data['child'] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(context, data['child'], controllers: controllers ,onMethodCall: onMethodCall, onListeners: onListeners,),
    );
  }
}
