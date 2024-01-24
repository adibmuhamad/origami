import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class PaddingBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return Padding(
      key: data['key'] == null ? null : Key(data['key']),
      padding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['padding']) ??
          EdgeInsets.zero,
      child: OrigamiWidgetBuilder.buildWidget(context, data['child'], controllers: controllers ,onMethodCall: onMethodCall, onListeners: onListeners,),
    );
  }
}
