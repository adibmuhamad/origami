import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class FloatingActionButtonBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return FloatingActionButton(
      key: data['key'] == null ? null : Key(data['key']),
      onPressed: () {},
      backgroundColor: OrigamiWidgetUtil.parseColor(data['backgroundColor']),
      autofocus: OrigamiWidgetUtil.parseCondition(data["autofocus"]) ?? false,
      clipBehavior: OrigamiWidgetUtil.parseClip(data["clipBehavior"]),
      disabledElevation:
          OrigamiWidgetUtil.parseDouble(data["disabledElevation"]),
      elevation: OrigamiWidgetUtil.parseDouble(data["elevation"]),
      enableFeedback: data["enableFeedback"],
      focusColor: OrigamiWidgetUtil.parseColor(data['focusColor']),
      focusElevation: OrigamiWidgetUtil.parseDouble(data["focusElevation"]),
      focusNode: data["focusNode"] == null
          ? null
          : FocusNode(
              canRequestFocus: data["focusNode"]["canRequestFocus"] ?? true,
              debugLabel: data["focusNode"]["debugLabel"],
              descendantsAreFocusable:
                  data["focusNode"]["descendantsAreFocusable"] ?? true,
              descendantsAreTraversable:
                  data["focusNode"]["descendantsAreTraversable"] ?? true,
              skipTraversal: data["focusNode"]["skipTraversal"] ?? false,
            ),
      foregroundColor: OrigamiWidgetUtil.parseColor(data['foregroundColor']),
      highlightElevation:
          OrigamiWidgetUtil.parseDouble(data["highlightElevation"]),
      hoverColor: OrigamiWidgetUtil.parseColor(data['hoverColor']),
      isExtended: OrigamiWidgetUtil.parseCondition(data["isExtended"]) ?? false,
      hoverElevation: OrigamiWidgetUtil.parseDouble(data["hoverElevation"]),
      mini: OrigamiWidgetUtil.parseCondition(data["mini"]) ?? false,
      tooltip: data["tooltip"],
      splashColor: OrigamiWidgetUtil.parseColor(data['splashColor']),
      child: data['child'] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
