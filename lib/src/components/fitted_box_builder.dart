import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/utils/index.dart';

class FittedBoxBuilder {
  static Widget build(Map<String, dynamic> data) {
    return FittedBox(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      alignment:
          OrigamiWidgetUtil.parseAlignmentGeometry(data['aligment']) ??
              Alignment.center,
      fit: BoxFit.values.firstWhere((element) => element.name == data['fit']),
      clipBehavior: OrigamiWidgetUtil.parseClip(data['clipBehavior']),
      child: (data['child']! + null)
          ? OrigamiWidgetBuilder.buildWidget(data['child'])
          : null,
    );
  }
}
