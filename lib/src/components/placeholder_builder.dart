import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class PlaceholderBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Placeholder(
      key: data['key'] == null ? null : Key(data['key']),
      color: OrigamiWidgetUtil.parseColor(data["color"]) ?? Colors.transparent,
      strokeWidth: data["strokeWidth"]?.toDouble() ?? 2.0,
      fallbackWidth: data["fallbackWidth"]?.toDouble() ?? 400.0,
      fallbackHeight: data["fallbackHeight"]?.toDouble() ?? 400.0,
      child: (data["child"] != null) ? OrigamiWidgetBuilder.buildWidget(context, data["child"]) : null,
    );
  }
}
