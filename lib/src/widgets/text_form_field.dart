import 'package:flutter/material.dart';
import 'package:origami/src/builder/text_form_field_builder.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const TextFormFieldWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return TextFormFieldBuilder.buildTextFormField(data);
  }
}
