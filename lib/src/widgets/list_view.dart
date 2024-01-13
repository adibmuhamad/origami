import 'package:flutter/material.dart';
import 'package:origami/src/builder/list_view_builder.dart';

class ListViewWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const ListViewWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListViewBuilder.buildListView(data);
  }
}
