import 'package:flutter/material.dart';
import 'package:origami/src/builder/single_child_scroll_view_builder.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const SingleChildScrollViewWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollViewBuilder.buildSingleChildScrollView(data);
  }
}
