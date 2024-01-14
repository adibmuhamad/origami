import 'package:flutter/material.dart';
import 'package:origami/src/actions/origami_action_handler.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class OutlinedButtonBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return OutlinedButton(
      key: data['key'] == null ? null : Key(data['key']),
      autofocus: OrigamiWidgetUtil.parseCondition(data["autoFocus"]) ?? false,
      focusNode: data["focusNode"] == null
          ? null
          : FocusNode(
              canRequestFocus: OrigamiWidgetUtil.parseCondition(data["focusNode"]["canRequestFocus"]) ?? true,
              debugLabel: data["focusNode"]["debugLabel"],
              descendantsAreFocusable:
                  OrigamiWidgetUtil.parseCondition(data["focusNode"]["descendantsAreFocusable"]) ?? true,
              descendantsAreTraversable:
                  OrigamiWidgetUtil.parseCondition(data["focusNode"]["descendantsAreTraversable"]) ?? true,
              skipTraversal: OrigamiWidgetUtil.parseCondition(data["focusNode"]["skipTraversal"]) ?? false,
            ),
      onPressed: data["onPressed"] != null
          ? () {
              OrigamiActionHandler.handleAction(context, data["onPressed"]);
            }
          : null,
      style: OrigamiWidgetUtil.parseButtonStyle(data['style']),
      child: data['child'] == null
          ? null
          : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
