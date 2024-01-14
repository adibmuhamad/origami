import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';

class SafeAreaBuilder {
  static Widget build(Map<String, dynamic> data) {
    return SafeArea(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      child: data['child'] == null ? const SizedBox() : OrigamiWidgetBuilder.buildWidget(data['child']),
    );
  }
}
