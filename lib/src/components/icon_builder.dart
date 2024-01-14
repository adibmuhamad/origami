import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';
import 'package:string_2_icon/string_2_icon.dart';

class IconBuilder {
  static Widget build(Map<String, dynamic> data) {
    return Icon(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      data["iconData"] != null
          ? String2Icon.getIconDataFromString(data["iconData"])
          : null,
      color: OrigamiWidgetUtil.parseColor(data["color"]),
    );
  }
}
