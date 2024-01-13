import 'package:flutter/material.dart';
import 'package:origami/src/builder/column_builder.dart';

class ColumnWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const ColumnWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ColumnBuilder.buildColumn(data);
  }
}
