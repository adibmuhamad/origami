import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class FlexibleBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Flexible(
      key: data['key'] == null ? null : Key(data['key']),
      flex: OrigamiWidgetUtil.parseInt(data["flex"]) ?? 1,
      child: data['child'] == null
          ? const SizedBox()
          : OrigamiWidgetBuilder.buildWidget(context, data['child']),
    );
  }
}
