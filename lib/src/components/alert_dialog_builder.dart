import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class AlertDialogBuilder {
  static Widget build(Map<String, dynamic> data) {
    return AlertDialog(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      titlePadding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(
          data['titlePadding']),
      actions: data["actions"] == null
          ? []
          : OrigamiWidgetBuilder.buildWidgetsList(data['actions']),
      actionsAlignment: OrigamiWidgetUtil.parseMainAxisAlignment(
          data['actionsAlignment']),
      alignment:
          OrigamiWidgetUtil.parseAlignmentGeometry(data['alignment']),
      shape: RoundedRectangleBorder(
        borderRadius: OrigamiWidgetUtil.parseBorderRadiusGeometry(
            data['borderRadius']),
      ),
      buttonPadding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(
          data['buttonPadding']),
      content: data["content"] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(data['content']),
      elevation: data["elevation"]?.toDouble(),
      clipBehavior: OrigamiWidgetUtil.parseClip(data['clipBehavior']),
      scrollable: OrigamiWidgetUtil.parseCondition(data["scrollable"]) ?? false,
      title: data["title"] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(data['title']),
      backgroundColor: OrigamiWidgetUtil.parseColor(data['backgroundColor']),
      titleTextStyle: OrigamiWidgetUtil.parseTextStyle(data['titleTextStyle']),
    );
  }
}