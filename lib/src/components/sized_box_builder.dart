import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class SizedBoxBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return SizedBox(
      key: data['key'] == null ? null : Key(data['key']),
      width: OrigamiWidgetUtil.parseDouble(data['width']),
      height: OrigamiWidgetUtil.parseDouble(data['height']),
      child: (data["child"] != null)
          ? OrigamiWidgetBuilder.buildWidget(context, data["child"])
          : null,
    );
  }
}
