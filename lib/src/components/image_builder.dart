import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';

class ImageBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    try {
      switch (data['imageType']) {
        case 'asset':
          return Image.asset(
            data['value'],
            key: data['key'] == null ? null : Key(data['key']),
            width: OrigamiWidgetUtil.parseDouble(data['width']) ?? 100.0,
            height: OrigamiWidgetUtil.parseDouble(data['height']) ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: (data['fit'] != null)
                ? BoxFit.values
                    .firstWhere((element) => element.name == data['fit'])
                : null,
          );
        case 'network':
          return Image.network(
            data['value'],
            key: data['key'] == null ? null : Key(data['key']),
            width: OrigamiWidgetUtil.parseDouble(data['width']) ?? 100.0,
            height: OrigamiWidgetUtil.parseDouble(data['height']) ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: OrigamiWidgetUtil.parseBoxFit(data['fit']),
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: OrigamiWidgetUtil.parseDouble(data['width']) ?? 100.0,
                height: OrigamiWidgetUtil.parseDouble(data['height']) ?? 100.0,
                color: OrigamiWidgetUtil.parseColor(data['color']),
                child: const Center(
                  child: Text("Image Load Error"),
                ),
              );
            },
          );
        case 'file':
          return Image.file(
            data['value'],
            key: data['key'] == null ? null : Key(data['key']),
            width: OrigamiWidgetUtil.parseDouble(data['width']) ?? 100.0,
            height: OrigamiWidgetUtil.parseDouble(data['height']) ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: OrigamiWidgetUtil.parseBoxFit(data['fit']),
          );
        case 'memory':
          return Image.memory(
            data['value'],
            key: data['key'] == null ? null : Key(data['key']),
            width: OrigamiWidgetUtil.parseDouble(data['width']) ?? 100.0,
            height: OrigamiWidgetUtil.parseDouble(data['height']) ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: OrigamiWidgetUtil.parseBoxFit(data['fit']),
          );
        default:
          return Container();
      }
    } catch (e, stackTrace) {
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
    }
    return Container();
  }
}
