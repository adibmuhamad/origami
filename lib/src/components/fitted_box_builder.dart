import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class FittedBoxBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return FittedBox(
      key: data['key'] == null ? null : Key(data['key']),
      alignment:
          OrigamiWidgetUtil.parseAlignmentGeometry(data['aligment']) ??
              Alignment.center,
      fit: BoxFit.values.firstWhere((element) => element.name == data['fit']),
      clipBehavior: OrigamiWidgetUtil.parseClip(data['clipBehavior']),
      child: (data['child']! + null)
          ? OrigamiWidgetBuilder.buildWidget(context, data['child'])
          : null,
    );
  }
}
