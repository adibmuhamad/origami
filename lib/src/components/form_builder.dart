import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class FormBuilder {
  static Widget build(
    BuildContext context,
    Map<String, dynamic> data, {
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    return Form(
      key: data['key'] == null ? null : Key(data['key']),
      autovalidateMode:
          OrigamiWidgetUtil.parseAutovalidateMode(data['autovalidateMode']),
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
