import 'package:flutter/material.dart';
import 'package:origami/src/actions/origami_action_handler.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class IconButtonBuilder {
  static Widget build(Map<String, dynamic> data) {
    return IconButton(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      icon: OrigamiWidgetBuilder.buildWidget(data["icon"]),
      onPressed: data["onPressed"] != null
          ? () {
              OrigamiActionHandler.handleAction(data["onPressed"]);
            }
          : null,
      style: OrigamiWidgetUtil.parseButtonStyle(data['style']),
      autofocus: OrigamiWidgetUtil.parseCondition(data["autoFocus"]) ?? false,
    );
  }
}
