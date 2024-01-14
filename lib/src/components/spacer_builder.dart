import 'package:flutter/material.dart';

class SpacerBuilder {
  static Widget build(Map<String, dynamic> data) {
    return Spacer(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      flex: data["flex"]?.toInt() ?? 1,
    );
  }
}
