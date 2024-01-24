import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class ListViewBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
        String? controllerKey = data['controller'] as String?;
    ScrollController? controller = controllers?[controllerKey];
    return ListView(
      key: data['key'] == null ? null : Key(data['key']),
      controller: controller,
      scrollDirection: (data["scrollDirection"] != null)
          ? (data["scrollDirection"] == 'vertical')
              ? Axis.vertical
              : Axis.horizontal
          : Axis.vertical,
      addAutomaticKeepAlives:
          OrigamiWidgetUtil.parseCondition(data["addAutomaticKeepAlives"]) ??
              true,
      addRepaintBoundaries:
          OrigamiWidgetUtil.parseCondition(data["addRepaintBoundaries"]) ??
              true,
      addSemanticIndexes:
          OrigamiWidgetUtil.parseCondition(data["addSemanticIndexes"]) ?? true,
      cacheExtent: OrigamiWidgetUtil.parseDouble(data["cacheExtent"]),
      clipBehavior: OrigamiWidgetUtil.parseClip(data['clipBehavior']),
      dragStartBehavior:
          OrigamiWidgetUtil.parseDragStartBehavior(data['dragStartBehavior']),
      itemExtent: OrigamiWidgetUtil.parseDouble(data["itemExtent"]),
      keyboardDismissBehavior:
          OrigamiWidgetUtil.parseScrollViewKeyboardDismissBehavior(
              data['keyboardDismissBehavior']),
      padding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['padding']),
      primary: OrigamiWidgetUtil.parseCondition(data["primary"]),
      physics: OrigamiWidgetUtil.parseScrollPhysics(data['physics']),
      reverse: OrigamiWidgetUtil.parseCondition(data["reverse"]) ?? false,
      shrinkWrap: OrigamiWidgetUtil.parseCondition(data["shrinkWrap"]) ?? false,
      children:
          OrigamiWidgetBuilder.buildWidgetsList(context, data["children"], controllers: controllers,onMethodCall: onMethodCall,onListeners: onListeners,),
    );
  }
}
