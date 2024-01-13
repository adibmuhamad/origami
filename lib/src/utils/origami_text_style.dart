import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_colors.dart';
import 'package:origami/src/utils/origami_font_style.dart';
import 'package:origami/src/utils/origami_font_weight.dart';
import 'package:origami/src/utils/origami_locale.dart';
import 'package:origami/src/utils/origami_text_baseline.dart';
import 'package:origami/src/utils/origami_text_decoration.dart';
import 'package:origami/src/utils/origami_text_leading_distribution.dart';
import 'package:origami/src/utils/origami_text_overflow.dart';

// Example 1:
// { 
//   "textStyle": { 
//       "inherit": "true", 
//       "color": "000000",
//       "backgroundColor": "000000",
//       "fontSize": "14.0",
//       "fontWeight": "bold",
//       "fontStyle": "normal",
//       "letterSpacing": "0",
//       "wordSpacing": "0",
//       "textBaseline": "alphabetic",
//       "height": "14.0",
//       "leadingDistribution": "even",
//       "locale": "en",
//       "fontFamily": "Roboto",
//       "overflow": "clip",
//     } 
// }

class OrigamiTextStyle {
  static TextStyle? parseTextStyle(Map<String, dynamic>? data) {
    if (data == null) return null;

    return TextStyle(
      inherit: data['inherit'] == null ? data['inherit'] == "true" : true,
      color: OrigamiColors.parseColor(data['color']),
      backgroundColor: OrigamiColors.parseColor(data['backgroundColor']),
      fontSize: data['fontSize']?.toDouble(),
      fontWeight: OrigamiFontWeight.parseFontWeight(data['fontWeight']),
      fontStyle: OrigamiFontStyle.parseFontStyle(data['fontStyle']),
      letterSpacing: data['letterSpacing']?.toDouble(),
      wordSpacing: data['wordSpacing']?.toDouble(),
      textBaseline: OrigamiTextBaseline.parseTextBaseline(data['textBaseline']),
      height: data['height']?.toDouble(),
      leadingDistribution: OrigamiTextLeadingDistribution.parseTextLeadingDistribution(data['leadingDistribution']),
      locale: OrigamiLocale.parseLocale(data['locale']),
      decoration: OrigamiTextDecoration.parseTextDecoration(data['decoration']),
      fontFamily: data['fontFamily'],
      overflow: OrigamiTextOverflow.parseTextOverflow(data['overflow'])
    );
  }
}
