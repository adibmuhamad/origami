import 'package:flutter/material.dart';
import 'package:origami/src/builder/placeholder_builder.dart';

class PlaceholderWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const PlaceholderWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return PlaceholderBuilder.buildPlaceholder(data);
  }
}
