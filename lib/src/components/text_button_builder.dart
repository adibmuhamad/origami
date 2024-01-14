import 'package:flutter/material.dart';
import 'package:origami/src/actions/origami_action_handler.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class TextButtonBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return TextButton(
      key: data['key'] == null ? null : Key(data['key']),
      onPressed: data["onPressed"] != null
          ? () {
              OrigamiActionHandler.handleAction(context, data["onPressed"]);
            }
          : null,
      onLongPress: data["onLongPress"] != null
          ? () {
              OrigamiActionHandler.handleAction(context, data["onLongPress"]);
            }
          : null,
      style: OrigamiWidgetUtil.parseButtonStyle(data['style']),
      autofocus: OrigamiWidgetUtil.parseCondition(data["autofocus"]) ?? false,
      child: data['child'] == null
          ? const SizedBox()
          : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
