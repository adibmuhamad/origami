import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_colors.dart';
import 'package:string_2_icon/string_2_icon.dart';

// Example 1:
// {
//   "icon": {
//     "iconData": "search",
//     "color": "#FFFFFF"
//   }
// }

class IconBuilder {
  static Widget buildIcon(Map<String, dynamic> data) {
    return Icon(
      data["iconData"] != null
          ? String2Icon.getIconDataFromString(data["iconData"])
          : null,
      color: OrigamiColors.parseColor(data["color"]),
    );
  }
}
