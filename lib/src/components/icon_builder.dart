import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';
import 'package:string_2_icon/string_2_icon.dart';

class IconBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data,
      { Map<String, dynamic>? controllers,Function(dynamic params)? onMethodCall,Map<String, Function(dynamic params)>? onListeners,}) {
    return Icon(
      key: data['key'] == null ? null : Key(data['key']),
      data["iconData"] != null
          ? String2Icon.getIconDataFromString(data["iconData"])
          : null,
      color: OrigamiWidgetUtil.parseColor(data["color"]),
    );
  }
}
