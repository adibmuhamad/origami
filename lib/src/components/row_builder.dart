import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class RowBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return Row(
      key: data['key'] == null ? null : Key(data['key']),
      mainAxisAlignment:
          OrigamiWidgetUtil.parseMainAxisAlignment(data["mainAxisAlignment"]),
      crossAxisAlignment:
          OrigamiWidgetUtil.parseCrossAxisAlignment(data["crossAxisAlignment"]),
      mainAxisSize: OrigamiWidgetUtil.parseMainAxisSize(data["mainAxisSize"]),
      textDirection:
          OrigamiWidgetUtil.parseTextDirection(data["textDirection"]),
      verticalDirection:
          OrigamiWidgetUtil.parseVerticalDirection(data["verticalDirection"]),
      textBaseline: OrigamiWidgetUtil.parseTextBaseline(data["textBaseline"]),
      children:
          OrigamiWidgetBuilder.buildWidgetsList(context, data["children"], controllers: controllers,onMethodCall: onMethodCall,onListeners: onListeners,),
    );
  }
}
