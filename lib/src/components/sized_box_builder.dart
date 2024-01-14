import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';

class SizedBoxBuilder {
  static Widget build(Map<String, dynamic> data) {
    return SizedBox(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      width: data['width']?.toDouble(),
      height: data['height']?.toDouble(),
      child: (data["child"] != null) ? OrigamiWidgetBuilder.buildWidget(data["child"]) : null,
    );
  }
}
