import 'package:flutter/material.dart';
import 'package:origami/src/builder/row_builder.dart';

class RowWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const RowWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return RowBuilder.buildRow(data);
  }
}
