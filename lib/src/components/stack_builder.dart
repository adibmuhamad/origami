import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class StackBuilder {
  static Widget build(
    BuildContext context,
    Map<String, dynamic> data, {
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    return Stack(
      key: data['key'] == null ? null : Key(data['key']),
      alignment: OrigamiWidgetUtil.parseAlignmentGeometry(data['alignment']) ??
          AlignmentDirectional.topStart,
      fit: OrigamiWidgetUtil.parseStackFit(data['fit']) ?? StackFit.loose,
      textDirection:
          OrigamiWidgetUtil.parseTextDirection(data['textDirection']),
      clipBehavior: OrigamiWidgetUtil.parseClip(data['clipBehavior']),
      children: OrigamiWidgetBuilder.buildWidgetsList(
        context,
        data["children"],
        controllers: controllers,
        onMethodCall: onMethodCall,
        onListeners: onListeners,
      ),
    );
  }
}
