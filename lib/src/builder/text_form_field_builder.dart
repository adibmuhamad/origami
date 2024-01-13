import 'package:flutter/material.dart';
import 'package:origami/src/builder/icon_builder.dart';
import 'package:origami/src/utils/origami_keyboard_type.dart';

// Example 1:
// {
//   "textFormField": {
//     "decoration": {
//       "label": "Test"
//       "hint": "Test"
//       "prefixIcon": {
//         "data": "0xe047",
//         "fontFamily": "MaterialIcons",
//       },
//       "suffixIcon": {
//         "data": "0xe047",
//         "fontFamily": "MaterialIcons",
//       },
//     },
//     "keyboardType": "number"
//     "obscureText": "true",
//   }
// }

class TextFormFieldBuilder {
  static Widget buildTextFormField(Map<String, dynamic> data) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: data['decoration']['label'] ?? '',
        hintText: data['decoration']['hint'] ?? '',
        prefixIcon: data['decoration']['prefixIcon'] != null
            ? IconBuilder.buildIcon(data['decoration']['prefixIcon'])
            : null,
        suffixIcon:
             data['decoration']['suffixIcon'] != null
            ? IconBuilder.buildIcon(data['decoration']['suffixIcon'])
            : null,
      ),
      keyboardType: OrigamiKeyboardType.parseKeyboardType(data['keyboardType']),
      obscureText: data['obscureText'] ?? false,
    );
  }
}
