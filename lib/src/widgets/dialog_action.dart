import 'package:flutter/material.dart';
import 'package:origami/src/builder/text_button_builder.dart';

class DialogActions {
  static List<Widget> buildDialogActions(BuildContext context, List<dynamic>? actions) {
    if (actions == null) return [];

    return actions
        .map<Widget>((action) {
         return TextButtonBuilder.buildTextButton(action);
        })
        .toList();
  }
}