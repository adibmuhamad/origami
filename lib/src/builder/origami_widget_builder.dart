import 'package:flutter/material.dart';
import 'package:origami/src/components/index.dart';
import 'package:origami/src/components/inkwell_builder.dart';

abstract class OrigamiWidgetBuilder {
  static Widget buildWidget(BuildContext context, Map<String, dynamic> data) {
    String type = data["type"];
    if (origamiWidgetBuilders.containsKey(type)) {
      return origamiWidgetBuilders[type]!(context, data);
    } else {
      return const SizedBox();
    }
  }

  static List<Widget> buildWidgetsList(
      BuildContext context, List<dynamic> dataList) {
    return dataList.map((data) => buildWidget(context, data)).toList();
  }

  static Map<String, Widget Function(BuildContext, Map<String, dynamic>)>
      origamiWidgetBuilders = {
    'alertDialog': AlertDialogBuilder.build,
    'appBar': AppBarBuilder.build,
    'card': CardBuilder.build,
    'column': ColumnBuilder.build,
    'container': ContainerBuilder.build,
    'divider': DividerBuilder.build,
    'elevatedButton': ElevatedButtonBuilder.build,
    'expanded': ExpandedBuilder.build,
    'fittedBox': FittedBoxBuilder.build,
    'flexible': FlexibleBuilder.build,
    'floatingActionButton': FloatingActionButtonBuilder.build,
    'form': FormBuilder.build,
    'gestureDetector': GestureDetectorBuilder.build,
    'icon': IconBuilder.build,
    'iconButton': IconButtonBuilder.build,
    'image': ImageBuilder.build,
    'inkWell': InkWellBuilder.build,
    'listView': ListViewBuilder.build,
    'outlinedButton': OutlinedButtonBuilder.build,
    'placeholder': PlaceholderBuilder.build,
    'positioned': PositionedBuilder.build,
    'row': RowBuilder.build,
    'safeArea': SafeAreaBuilder.build,
    'scaffold': ScaffoldBuilder.build,
    'singleChildScrollView': SingleChildScrollViewBuilder.build,
    'sizedBox': SizedBoxBuilder.build,
    'spacer': SpacerBuilder.build,
    'text': TextBuilder.build,
    'textButton': TextButtonBuilder.build,
    'textFormField': TextFormFieldBuilder.build,
    'verticalDivider': VerticalDividerBuilder.build,
    'wrap': WrapBuilder.build,
  };
}
