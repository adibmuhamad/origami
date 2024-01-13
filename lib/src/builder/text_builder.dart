import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_text_style.dart';

// Example 1:
// {
//   "text": {
//     "text": "Test",
//     "style": {},
//   }
// }

class TextBuilder {
  static Widget buildText(Map<String, dynamic> data) {
    return Text(
      data['text'] ?? '',
      style: OrigamiTextStyle.parseTextStyle(data['style']),
    );
  }
}
