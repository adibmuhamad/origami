import 'package:flutter/material.dart';
import 'package:origami/src/actions/origami_action_handler.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class InkWellBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return InkWell(
      key: data['key'] == null ? null : Key(data['key']),
      borderRadius: OrigamiWidgetUtil.parseBorderRadius(data),
      onTap: data["onTap"] != null
          ? () {
              OrigamiActionHandler.handleAction(context, data["onTap"]);
            }
          : null,
      child: data['child'] == null ? null : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
