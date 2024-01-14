import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class ListViewBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return ListView(
      key: data['key'] == null ? null : Key(data['key']),
      scrollDirection: (data["scrollDirection"] != null)
          ? (data["scrollDirection"] == 'vertical')
              ? Axis.vertical
              : Axis.horizontal
          : Axis.vertical,
      addAutomaticKeepAlives: OrigamiWidgetUtil.parseCondition(data["addAutomaticKeepAlives"]) ?? true,
      addRepaintBoundaries: OrigamiWidgetUtil.parseCondition(data["addRepaintBoundaries"]) ?? true,
      addSemanticIndexes: OrigamiWidgetUtil.parseCondition(data["addSemanticIndexes"]) ?? true,
      cacheExtent: data["cacheExtent"]?.toDouble(),
      clipBehavior: OrigamiWidgetUtil.parseClip(data['clipBehavior']),
      dragStartBehavior:
          OrigamiWidgetUtil.parseDragStartBehavior(data['dragStartBehavior']),
      itemExtent: data["itemExtent"]?.toDouble(),
      keyboardDismissBehavior: OrigamiWidgetUtil.parseScrollViewKeyboardDismissBehavior(data['keyboardDismissBehavior']),
      padding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(data['padding']),
      primary: OrigamiWidgetUtil.parseCondition(data["primary"]),
      physics: OrigamiWidgetUtil.parseScrollPhysics(data['physics']),
      reverse: OrigamiWidgetUtil.parseCondition(data["reverse"]) ?? false,
      shrinkWrap: OrigamiWidgetUtil.parseCondition(data["shrinkWrap"]) ?? false,
      children: OrigamiWidgetBuilder.buildWidgetsList(context, data["children"]),
    );
  }
}
