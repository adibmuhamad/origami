import 'package:flutter/material.dart';
import 'package:origami/src/actions/origami_action_handler.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class ElevatedButtonBuilder {
  static Widget build(Map<String, dynamic> data) {
    return ElevatedButton(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      onPressed: data["onPressed"] != null
          ? () {
              OrigamiActionHandler.handleAction(data["onPressed"]);
            }
          : null,
      onLongPress: data["onLongPress"] != null
          ? () {
              OrigamiActionHandler.handleAction(data["onLongPress"]);
            }
          : null,
      style: OrigamiWidgetUtil.parseButtonStyle(data['style']),
      autofocus: OrigamiWidgetUtil.parseCondition(data['autoFocus']) ?? false,
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["child"])
          : null,
    );
  }
}
