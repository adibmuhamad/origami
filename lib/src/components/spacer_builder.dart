import 'package:flutter/material.dart';

class SpacerBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return Spacer(
      key: data['key'] == null ? null : Key(data['key']),
      flex: data["flex"]?.toInt() ?? 1,
    );
  }
}
