import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';
import 'package:origami/src/components/icon_builder.dart';
import 'package:origami/src/utils/index.dart';

class TextFormFieldBuilder {
  static Widget build(BuildContext context, Map<String, dynamic> data) {
    return TextFormField(
      key: data['key'] == null ? null : Key(data['key']),
      validator: data['validator'],
      controller: TextEditingController(),
      textAlign: OrigamiWidgetUtil.parseTextAlign(data['textAlign']) ??
          TextAlign.start,
      autocorrect: OrigamiWidgetUtil.parseCondition(data["autoCorrect"]) ?? true,
      autofocus: OrigamiWidgetUtil.parseCondition(data["autoFocus"]) ?? false,
      cursorColor: OrigamiWidgetUtil.parseColor(data['cursorColor']),
      cursorHeight: data["cursorHeight"]?.toDouble(),
      cursorWidth: data["cursorWidth"]?.toDouble() ?? 2.0,
      style: OrigamiWidgetUtil.parseTextStyle(data['style']),
      enabled: OrigamiWidgetUtil.parseCondition(data["enabled"]),
      readOnly: OrigamiWidgetUtil.parseCondition(data["readOnly"]) ?? false,
      expands: OrigamiWidgetUtil.parseCondition(data["expands"]) ?? false,
      maxLength: data["maxLength"]?.toInt(),
      maxLines: data["maxLines"]?.toInt() ?? 1,
      minLines: data["minLines"]?.toInt(),
      obscureText: OrigamiWidgetUtil.parseCondition(data["obscureText"]) ?? false,
      scrollPhysics:
          OrigamiWidgetUtil.parseScrollPhysics(data['scrollPhysics']),
      textInputAction:
          OrigamiWidgetUtil.parseTextInputAction(data['textInputAction']),
      keyboardType: OrigamiWidgetUtil.parseKeyboardType(data['keyboardType']),
      decoration: InputDecoration(
        filled: OrigamiWidgetUtil.parseCondition(data['decoration']["filled"]),
        fillColor:
            OrigamiWidgetUtil.parseColor(data['decoration']['fillColor']),
        label: data['decoration']["label"] == null
            ? null
            : OrigamiWidgetBuilder.buildWidget(context, data['decoration']['label']),
        labelText: data['decoration']['label'] ?? '',
        hintText: data['decoration']['hint'] ?? '',
        prefixIcon: data['decoration']['prefixIcon'] != null
            ? IconBuilder.build(context, data['decoration']['prefixIcon'])
            : null,
        suffixIcon: data['decoration']['suffixIcon'] != null
            ? IconBuilder.build(context, data['decoration']['suffixIcon'])
            : null,
        focusedErrorBorder: OrigamiWidgetUtil.parseInputBorder(
            data['decoration']['focusedErrorBorder']),
        focusedBorder: OrigamiWidgetUtil.parseInputBorder(
            data['decoration']['focusedBorder']),
        enabledBorder: OrigamiWidgetUtil.parseInputBorder(
            data['decoration']['enabledBorder']),
        border:
            OrigamiWidgetUtil.parseInputBorder(data['decoration']['border']),
        errorBorder: OrigamiWidgetUtil.parseInputBorder(
            data['decoration']['errorBorder']),
        disabledBorder: OrigamiWidgetUtil.parseInputBorder(
            data['decoration']['disabledBorder']),
        contentPadding: OrigamiWidgetUtil.parseEdgeInsetsGeometry(
            data['decoration']['contentPadding']),
      ),
    );
  }
}
