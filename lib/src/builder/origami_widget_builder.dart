import 'package:flutter/material.dart';
import 'package:origami/src/builder/appbar_builder.dart';
import 'package:origami/src/builder/column_builder.dart';
import 'package:origami/src/builder/container_builder.dart';
import 'package:origami/src/builder/elevated_button_builder.dart';
import 'package:origami/src/builder/icon_builder.dart';
import 'package:origami/src/builder/icon_button_builder.dart';
import 'package:origami/src/builder/image_builder.dart';
import 'package:origami/src/builder/list_view_builder.dart';
import 'package:origami/src/builder/placeholder_builder.dart';
import 'package:origami/src/builder/row_builder.dart';
import 'package:origami/src/builder/safe_area_builder.dart';
import 'package:origami/src/builder/scaffold_builder.dart';
import 'package:origami/src/builder/single_child_scroll_view_builder.dart';
import 'package:origami/src/builder/sized_box_builder.dart';
import 'package:origami/src/builder/text_builder.dart';
import 'package:origami/src/builder/text_button_builder.dart';
import 'package:origami/src/builder/text_form_field_builder.dart';

abstract class OrigamiWidgetBuilder {
  static Widget buildWidget(Map<String, dynamic> data) {
    String type = data["type"];
    if (origamiWidgetBuilders.containsKey(type)) {
      return origamiWidgetBuilders[type]!(data);
    } else {
      // Handle unknown widget type or throw an error
      return Container();
    }
  }

  static List<Widget> buildWidgetsList(List<dynamic> dataList) {
    return dataList.map((data) => buildWidget(data)).toList();
  }

  static Map<String, Widget Function(Map<String, dynamic>)> origamiWidgetBuilders = {
    'appBar': AppBarBuilder.buildAppBar,
    'column': ColumnBuilder.buildColumn,
    'container': ContainerBuilder.buildContainer,
    'elevatedButton': ElevatedButtonBuilder.buildElevatedButton,
    'icon': IconBuilder.buildIcon,
    'iconButton': IconButtonBuilder.buildIconButton,
    'image': ImageBuilder.buildImage,
    'listView': ListViewBuilder.buildListView,
    'placeholder': PlaceholderBuilder.buildPlaceholder,
    'row': RowBuilder.buildRow,
    'safeArea': SafeAreaBuilder.buildSafeArea,
    'scaffold': ScaffoldBuilder.buildScaffold,
    'singleChildScrollView': SingleChildScrollViewBuilder.buildSingleChildScrollView,
    'sizedBox': SizedBoxBuilder.buildSizedBox,
    'text': TextBuilder.buildText,
    'textButton': TextButtonBuilder.buildTextButton,
    'textFormField': TextFormFieldBuilder.buildTextFormField,
  };
}
