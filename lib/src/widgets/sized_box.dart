import 'package:flutter/material.dart';
import 'package:origami/src/builder/sized_box_builder.dart';

class SizedBoxWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const SizedBoxWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBoxBuilder.buildSizedBox(data);
  }
}
