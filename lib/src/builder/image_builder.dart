import 'package:flutter/material.dart';
import 'package:origami/src/utils/origami_colors.dart';

// Example 1:
// {
//   "image": {
//     "imageType": "asset",
//     "value": "value",
//     "width": "400.0",
//     "height": "400.0",
//     "color": "000000",
//     "fit": "fill",
//   }
// }

class ImageBuilder {
  static Widget buildImage(Map<String, dynamic> data) {
    try {
      switch (data['imageType']) {
        case 'asset':
          return Image.asset(
            data['value'],
            width: data['width']?.toDouble() ?? 100.0,
            height: data['height']?.toDouble() ?? 100.0,
            color: OrigamiColors.parseColor(data['color']),
            fit: (data['fit'] != null)
                ? BoxFit.values
                    .firstWhere((element) => element.name == data['fit'])
                : null,
          );
        case 'network':
          return Image.network(
            data['value'],
            width: data['width']?.toDouble() ?? 100.0,
            height: data['height']?.toDouble() ?? 100.0,
            color: OrigamiColors.parseColor(data['color']),
            fit: (data['fit'] != null)
                ? BoxFit.values
                    .firstWhere((element) => element.name == data['fit'])
                : null,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: data['width']?.toDouble() ?? 100.0,
                height: data['height']?.toDouble() ?? 100.0,
                color: OrigamiColors.parseColor(data['color']),
                child: const Center(
                  child: Text("Image Load Error"),
                ),
              );
            },
          );
        case 'file':
          return Image.file(
            data['value'],
            width: data['width']?.toDouble() ?? 100.0,
            height: data['height']?.toDouble() ?? 100.0,
            color: OrigamiColors.parseColor(data['color']),
            fit: (data['fit'] != null)
                ? BoxFit.values
                    .firstWhere((element) => element.name == data['fit'])
                : null,
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
