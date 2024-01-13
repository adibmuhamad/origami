import 'package:flutter/material.dart';
import 'package:origami/src/builder/elevated_button_builder.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const ElevatedButtonWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonBuilder.buildElevatedButton(data);
  }
}
