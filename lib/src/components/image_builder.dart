import 'package:flutter/material.dart';
import 'package:origami/src/utils/index.dart';

class ImageBuilder {
  static Widget build(Map<String, dynamic> data) {
    try {
      switch (data['imageType']) {
        case 'asset':
          return Image.asset(
            key: data['key'] == null ? GlobalKey() : Key(data['key']),
            data['value'],
            width: data['width']?.toDouble() ?? 100.0,
            height: data['height']?.toDouble() ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: (data['fit'] != null)
                ? BoxFit.values
                    .firstWhere((element) => element.name == data['fit'])
                : null,
          );
        case 'network':
          return Image.network(
            key: data['key'] == null ? GlobalKey() : Key(data['key']),
            data['value'],
            width: data['width']?.toDouble() ?? 100.0,
            height: data['height']?.toDouble() ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: OrigamiWidgetUtil.parseBoxFit(data['fit']),
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: data['width']?.toDouble() ?? 100.0,
                height: data['height']?.toDouble() ?? 100.0,
                color: OrigamiWidgetUtil.parseColor(data['color']),
                child: const Center(
                  child: Text("Image Load Error"),
                ),
              );
            },
          );
        case 'file':
          return Image.file(
            key: data['key'] == null ? GlobalKey() : Key(data['key']),
            data['value'],
            width: data['width']?.toDouble() ?? 100.0,
            height: data['height']?.toDouble() ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: OrigamiWidgetUtil.parseBoxFit(data['fit']),
          );
          case 'memory':
          return Image.memory(
            key: data['key'] == null ? GlobalKey() : Key(data['key']),
            data['value'],
            width: data['width']?.toDouble() ?? 100.0,
            height: data['height']?.toDouble() ?? 100.0,
            color: OrigamiWidgetUtil.parseColor(data['color']),
            fit: OrigamiWidgetUtil.parseBoxFit(data['fit']),
          );
        default:
          return Container();
      }
    } catch (e) {
      debugPrint('Error load image: $e');
    }
    return Container();
  }
}
