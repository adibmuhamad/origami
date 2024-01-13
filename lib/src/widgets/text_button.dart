import 'package:flutter/material.dart';
import 'package:origami/src/builder/text_button_builder.dart';

class TextButtonWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const TextButtonWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return TextButtonBuilder.buildTextButton(data);
  }
}
