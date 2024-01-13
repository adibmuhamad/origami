import 'package:flutter/material.dart';
import 'package:origami/src/builder/image_builder.dart';

class ImageWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const ImageWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ImageBuilder.buildImage(data);
  }
}
