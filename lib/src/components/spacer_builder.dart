import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class SpacerBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Spacer(
      key: data['key'] == null ? null : Key(data['key']),
      flex: OrigamiWidgetUtil.parseInt(data["flex"]) ?? 1,
    );
  }
}
