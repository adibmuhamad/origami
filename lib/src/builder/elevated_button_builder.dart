import 'package:flutter/material.dart';
import 'package:origami/src/action_handler/origami_action_handler.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_button_style.dart';

// Example 1:
// {
//   "elevatedButton": {
//     "onPressed": "onPressed",
//     "onLongPress": "onLongPress",
//     "style": {},
//     "autofocus": "false",
//     "child": "child",
//   }
// }

class ElevatedButtonBuilder {
  static Widget buildElevatedButton(Map<String, dynamic> data) {
    return ElevatedButton(
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
      style: OrigamiButtonStyle.parseButtonStyle(data['style']),
      autofocus:
          (data["autofocus"] != null) ? data["autofocus"] == 'true' : false,
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["child"])
          : null,
    );
  }
}
