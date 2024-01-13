import 'package:flutter/material.dart';
import 'package:origami/src/action_handler/origami_action_handler.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_button_style.dart';

// Example 1:
// {
//   "iconButton": {
//     "icon": {},
//     "onPressed": "onPressed",
//     "style": {},
//     "autofocus": "false",
//   }
// }

class IconButtonBuilder {
  static Widget buildIconButton(Map<String, dynamic> data) {
    return IconButton(
      icon: OrigamiWidgetBuilder.buildWidget(data["icon"]),
       onPressed: data["onPressed"] != null
        ? () {
             OrigamiActionHandler.handleAction(data["onPressed"]);
          }
        : null,
      style: OrigamiButtonStyle.parseButtonStyle(data['style']),
      autofocus:
          (data["autofocus"] != null) ? data["autofocus"] == 'true' : false,
    );
  }
}
