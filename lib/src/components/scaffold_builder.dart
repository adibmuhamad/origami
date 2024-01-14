import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/components/index.dart';
import 'package:origami/src/utils/origami_widget_util.dart';

class ScaffoldBuilder {
  static Widget build(Map<String, dynamic> data) {
    return Scaffold(
      key: data['key'] == null ? GlobalKey() : Key(data['key']),
      appBar: (data['appBar'] != null)
          ? AppBarBuilder.build(data['appBar'])
          : null,
      backgroundColor: OrigamiWidgetUtil.parseColor(data['backgroundColor']),
      extendBody:OrigamiWidgetUtil.parseCondition( data["extendBody"]) ?? false,
      primary: OrigamiWidgetUtil.parseCondition(data["primary"]) ?? true,
      resizeToAvoidBottomInset: data["resizeToAvoidBottomInset"],
      body: (data["body"] != null)
          ? OrigamiWidgetBuilder.buildWidget(data["body"])
          : null,
      floatingActionButton: (data["floatingActionButton"] != null)
          ? FloatingActionButtonBuilder.build(data["floatingActionButton"])
          : null,
    );
  }
}
