import 'package:flutter/material.dart';
import 'package:origami/src/builder/container_builder.dart';

class ContainerWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const ContainerWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ContainerBuilder.buildContainer(data);
  }
}
