import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';

class SafeAreaBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return SafeArea(
      key: data['key'] == null ? null : Key(data['key']),
      child: data['child'] == null
          ? const SizedBox()
          : OrigamiWidgetBuilder.buildWidget(context, data['child'], controllers: controllers ,onMethodCall: onMethodCall, onListeners: onListeners,),
    );
  }
}
