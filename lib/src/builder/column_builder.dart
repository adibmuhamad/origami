import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/origami_cross_axis_alignment.dart';
import 'package:origami/src/utils/origami_main_axis_alignment.dart';
import 'package:origami/src/utils/origami_main_axis_size.dart';
import 'package:origami/src/utils/origami_text_baseline.dart';
import 'package:origami/src/utils/origami_text_direction.dart';
import 'package:origami/src/utils/origami_vertical_direction.dart';

// Example 1:
// { 
//   "column": {
//     "mainAxisAlignment": "center",
//     "crossAxisAlignment": "center",
//     "mainAxisSize": "min",
//     "textDirection": "ltr",
//     "verticalDirection": "down",
//     "textBaseline": "alphabetic",
//     "children": "children",
//   }
// }

class ColumnBuilder {
  static Widget buildColumn(Map<String, dynamic> data) {
    return Column(
      mainAxisAlignment: OrigamiMainAxisAlignment.parseMainAxisAlignment(data["mainAxisAlignment"]),
      crossAxisAlignment: OrigamiCrossAxisAlignment.parseCrossAxisAlignment(data["crossAxisAlignment"]),
      mainAxisSize: OrigamiMainAxisSize.parseMainAxisSize(data["mainAxisSize"]),
      textDirection: OrigamiTextDirection.parseTextDirection(data["textDirection"]),
      verticalDirection: OrigamiVerticalDirection.parseVerticalDirection(data["verticalDirection"]),
      textBaseline: OrigamiTextBaseline.parseTextBaseline(data["textBaseline"]),
      children: OrigamiWidgetBuilder.buildWidgetsList(data["children"]),
    );
  }
}
