import 'package:flutter/material.dart';
import 'package:origami/src/builder/text_builder.dart';

class TextWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const TextWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return TextBuilder.buildText(data);
  }
}
