import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class WrapBuilder {
  static Widget build(
    BuildContext context,
    Map<String, dynamic> data, {
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    return Wrap(
      key: data['key'] == null ? null : Key(data['key']),
      spacing: OrigamiWidgetUtil.parseDouble(data["spacing"]) ?? 0.0,
      runSpacing: OrigamiWidgetUtil.parseDouble(data["runSpacing"]) ?? 0.0,
      alignment: OrigamiWidgetUtil.parseWrapAlignment(data['alignment']) ??
          WrapAlignment.start,
      crossAxisAlignment:
          OrigamiWidgetUtil.parseWrapCrossAlignment(data['crossAxisAlignment']),
      children: OrigamiWidgetBuilder.buildWidgetsList(
        context,
        data['children'],
        controllers: controllers,
        onMethodCall: onMethodCall,
        onListeners: onListeners,
      ),
    );
  }
}
