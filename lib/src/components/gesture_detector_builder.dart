import 'package:flutter/material.dart';
import 'package:origami/src/actions/origami_action_handler.dart';
import 'package:origami/src/builder/index.dart';

class GestureDetectorBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return GestureDetector(
      key: data['key'] == null ? null : Key(data['key']),
      onTap: data["onTap"] != null
          ? () {
              OrigamiActionHandler.handleAction(context, data["onTap"]);
            }
          : null,
      child: data['child'] == null ? null : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
