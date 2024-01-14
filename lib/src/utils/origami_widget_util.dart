import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OrigamiWidgetUtil {
  ///Returns the [bool] from string.
  static bool? parseCondition(String? value) {
    if (value == null) return null;
    return value == 'true';
  }

  ///Returns the [double] from string.
  static double? parseDouble(String? value) {
    if (value == null) return null;
    return double.tryParse(value);
  }

  ///Returns the [int] from string.
  static int? parseInt(String? value) {
    if (value == null) return null;
    return int.tryParse(value);
  }

  ///Returns the [Color] from string.
  static Color? parseColor(String? value) {
    try {
      if (value != null && value.isNotEmpty) {
        // Remove the '#' character if present
        String hexColor = value.startsWith('#') ? value.substring(1) : value;

        // Parse the hex color value and add the alpha channel
        return Color(int.parse('0xFF$hexColor'));
      }
    } catch (e, stackTrace) {
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
    }
    return null;
  }

  ///Returns the [TextStyle] from Map.
  static TextStyle? parseTextStyle(Map<String, dynamic>? data) {
    if (data == null) return null;

    return TextStyle(
      inherit: data['inherit'] == null ? data['inherit'] == "true" : true,
      color: parseColor(data['color']),
      backgroundColor: parseColor(data['backgroundColor']),
      fontSize: OrigamiWidgetUtil.parseDouble(data['fontSize']),
      fontWeight: parseFontWeight(data['fontWeight']),
      fontStyle: parseFontStyle(data['fontStyle']),
      letterSpacing: OrigamiWidgetUtil.parseDouble(data['letterSpacing']),
      wordSpacing: OrigamiWidgetUtil.parseDouble(data['wordSpacing']),
      textBaseline: parseTextBaseline(data['textBaseline']),
      height: OrigamiWidgetUtil.parseDouble(data['height']),
      leadingDistribution:
          parseTextLeadingDistribution(data['leadingDistribution']),
      locale: parseLocale(data['locale']),
      decoration: parseTextDecoration(data['decoration']),
      fontFamily: data['fontFamily'],
      overflow: parseTextOverflow(data['overflow']),
    );
  }

  ///Returns the [ButtonStyle] from Map.
  static ButtonStyle? parseButtonStyle(Map<String, dynamic>? data) {
    if (data == null) return null;

    return ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle?>(
          parseTextStyle(data['textStyle'])),
      backgroundColor: MaterialStateProperty.all<Color?>(
          parseColor(data['backgroundColor'])),
      foregroundColor: MaterialStateProperty.all<Color?>(
          parseColor(data['foregroundColor'])),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
          parseEdgeInsetsGeometry(data['padding'])),
      shape: MaterialStateProperty.all<OutlinedBorder?>(
        RoundedRectangleBorder(
          borderRadius: parseBorderRadiusGeometry(data['borderRadius']),
          side: parseBorderSide(data['side']),
        ),
      ),
    );
  }

  ///Returns the [FontStyle] from string.
  static FontStyle parseFontStyle(String? value) {
    if (value == null) return FontStyle.normal;
    return (value == 'italic') ? FontStyle.italic : FontStyle.normal;
  }

  ///Returns the [FontWeight] from string.
  static FontWeight? parseFontWeight(String? fontWeight) {
    switch (fontWeight) {
      case 'bold':
        return FontWeight.bold;
      case 'normal':
        return FontWeight.normal;
      case 'w100':
        return FontWeight.w100;
      case 'w200':
        return FontWeight.w200;
      case 'w300':
        return FontWeight.w300;
      case 'w400':
        return FontWeight.w400;
      case 'w500':
        return FontWeight.w500;
      case 'w600':
        return FontWeight.w600;
      case 'w700':
        return FontWeight.w700;
      case 'w800':
        return FontWeight.w800;
      case 'w900':
        return FontWeight.w900;
      default:
        return null;
    }
  }

  ///Returns the [Locale] from string.
  static Locale? parseLocale(String? value) {
    if (value == null) return null;
    return Locale(value);
  }

  ///Returns the [EdgeInsetsGeometry] from Map.
  static EdgeInsetsGeometry? parseEdgeInsetsGeometry(
      Map<String, dynamic>? data) {
    if (data == null) return null;

    EdgeInsetsGeometry edgeInsetsGeometry = EdgeInsets.zero;
    switch (data['edgeInsetsGeometry']) {
      case 'zero':
        edgeInsetsGeometry = EdgeInsets.zero;
        break;
      case 'all':
        edgeInsetsGeometry = EdgeInsets.all(double.parse(data['value'] ?? '0'));
        break;
      case 'only':
        edgeInsetsGeometry = EdgeInsets.only(
            left: double.parse(data['value']['left'] ?? '0'),
            right: double.parse(data['value']['right'] ?? '0'),
            top: double.parse(data['value']['top'] ?? '0'),
            bottom: double.parse(data['value']['bottom'] ?? '0'));
        break;
      case 'symmetric':
        edgeInsetsGeometry = EdgeInsets.symmetric(
            vertical: double.parse(data['value']['vertical'] ?? '0'),
            horizontal: double.parse(data['value']['horizontal'] ?? '0'));
        break;
    }

    return edgeInsetsGeometry;
  }

  ///Returns the [AlignmentGeometry] from string.
  static AlignmentGeometry? parseAlignmentGeometry(String? value) {
    if (value == null) return null;

    switch (value) {
      case "bottomCenter":
        return Alignment.bottomCenter;
      case "bottomLeft":
        return Alignment.bottomLeft;
      case "bottomRight":
        return Alignment.bottomRight;
      case "center":
        return Alignment.center;
      case "centerLeft":
        return Alignment.centerLeft;
      case "centerRight":
        return Alignment.centerRight;
      case "topCenter":
        return Alignment.topCenter;
      case "topLeft":
        return Alignment.topLeft;
      case "antiAliasWithSaveLayer":
        return Alignment.topRight;
      default:
        return null;
    }
  }

  ///Returns the [WrapAlignment] from string.
  static WrapAlignment? parseWrapAlignment(String? value) {
    if (value == null) return null;

    switch (value) {
      case "center":
        return WrapAlignment.center;
      case "end":
        return WrapAlignment.end;
      case "spaceAround":
        return WrapAlignment.spaceAround;
      case "spaceBetween":
        return WrapAlignment.spaceBetween;
      case "spaceEvenly":
        return WrapAlignment.spaceEvenly;
      case "start":
      default:
        return WrapAlignment.start;
    }
  }

  ///Returns the [CrossAxisAlignment] from string.
  static CrossAxisAlignment parseCrossAxisAlignment(String? value) {
    if (value == null) return CrossAxisAlignment.start;

    switch (value) {
      case "baseline":
        return CrossAxisAlignment.baseline;
      case "center":
        return CrossAxisAlignment.center;
      case "end":
        return CrossAxisAlignment.end;
      case "stretch":
        return CrossAxisAlignment.stretch;
      case "start":
      default:
        return CrossAxisAlignment.start;
    }
  }

  ///Returns the [MainAxisAlignment] from string.
  static MainAxisAlignment parseMainAxisAlignment(String? value) {
    if (value == null) return MainAxisAlignment.start;

    switch (value) {
      case "center":
        return MainAxisAlignment.center;
      case "end":
        return MainAxisAlignment.end;
      case "spaceAround":
        return MainAxisAlignment.spaceAround;
      case "stretch":
        return MainAxisAlignment.spaceBetween;
      case "spaceEvenly":
        return MainAxisAlignment.spaceEvenly;
      case "start":
      default:
        return MainAxisAlignment.start;
    }
  }

  ///Returns the [MainAxisSize] from string.
  static MainAxisSize parseMainAxisSize(String? value) {
    return value == "max" ? MainAxisSize.max : MainAxisSize.min;
  }

  ///Returns the [WrapCrossAlignment] from string.
  static WrapCrossAlignment parseWrapCrossAlignment(String? value) {
    if (value == null) return WrapCrossAlignment.start;

    switch (value) {
      case "center":
        return WrapCrossAlignment.center;
      case "end":
        return WrapCrossAlignment.end;
      case "start":
      default:
        return WrapCrossAlignment.start;
    }
  }

  ///Returns the [ScrollPhysics] from string.
  static ScrollPhysics? parseScrollPhysics(String? value) {
    if (value == null) return null;

    switch (value) {
      case "never":
        return const NeverScrollableScrollPhysics();
      case "bounce":
        return const BouncingScrollPhysics();
      case "always":
        return const AlwaysScrollableScrollPhysics();
      case "clamping":
        return const ClampingScrollPhysics();
      default:
        return null;
    }
  }

  ///Returns the [DragStartBehavior] from string.
  static DragStartBehavior parseDragStartBehavior(String? value) {
    if (value == null) return DragStartBehavior.start;

    switch (value) {
      case "down":
        return DragStartBehavior.down;
      case "start":
      default:
        return DragStartBehavior.start;
    }
  }

  ///Returns the [TextBaseline] from string.
  static TextBaseline? parseTextBaseline(String? value) {
    if (value == null) return null;
    return value == "alphabetic"
        ? TextBaseline.alphabetic
        : TextBaseline.ideographic;
  }

  ///Returns the [TextDecoration] from string.
  static TextDecoration? parseTextDecoration(String? value) {
    if (value == null) return null;
    switch (value) {
      case "lineThrough":
        return TextDecoration.lineThrough;
      case "overline":
        return TextDecoration.overline;
      case "underline":
        return TextDecoration.underline;
      case "none":
      default:
        return TextDecoration.none;
    }
  }

  ///Returns the [TextDirection] from string.
  static TextDirection? parseTextDirection(String? value) {
    if (value == null) return null;
    return value == "ltr" ? TextDirection.ltr : TextDirection.rtl;
  }

  ///Returns the [TextAlign] from string.
  static TextAlign? parseTextAlign(String? value) {
    if (value == null) return null;
    switch (value) {
      case "start":
        return TextAlign.start;
      case "end":
        return TextAlign.end;
      case "left":
        return TextAlign.left;
      case "right":
        return TextAlign.right;
      case "center":
        return TextAlign.center;
      case "justify":
        return TextAlign.justify;
      default:
        return null;
    }
  }

  ///Returns the [TextAlignVertical] from string.
  static TextAlignVertical? parseTextAlignVertical(String? value) {
    if (value == null) return null;
    switch (value) {
      case "top":
        return TextAlignVertical.top;
      case "center":
        return TextAlignVertical.center;
      case "bottom":
        return TextAlignVertical.bottom;
      default:
        return null;
    }
  }

  ///Returns the [TextCapitalization] from string.
  static TextCapitalization? parseTextCapitalization(String? value) {
    if (value == null) return null;
    switch (value) {
      case "none":
        return TextCapitalization.none;
      case "characters":
        return TextCapitalization.characters;
      case "words":
        return TextCapitalization.words;
      case "sentences":
        return TextCapitalization.sentences;
      default:
        return null;
    }
  }

  ///Returns the [TextInputAction] from string.
  static TextInputAction? parseTextInputAction(String? value) {
    if (value == null) return null;
    switch (value) {
      case "none":
        return TextInputAction.none;
      case "done":
        return TextInputAction.done;
      case "go":
        return TextInputAction.go;
      case "search":
        return TextInputAction.search;
      case "next":
        return TextInputAction.next;
      case "previous":
        return TextInputAction.previous;
      default:
        return null;
    }
  }

  ///Returns the [TextInputType] from string.
  static TextInputType? parseKeyboardType(String? value) {
    if (value == null) return null;
    switch (value) {
      case 'text':
        return TextInputType.text;
      case 'number':
        return TextInputType.number;
      case 'phone':
        return TextInputType.phone;
      case 'email':
        return TextInputType.emailAddress;
      default:
        return null;
    }
  }

  ///Returns the [ScrollViewKeyboardDismissBehavior] from string.
  static ScrollViewKeyboardDismissBehavior
      parseScrollViewKeyboardDismissBehavior(String? value) {
    if (value == null) return ScrollViewKeyboardDismissBehavior.manual;
    switch (value) {
      case 'onDrag':
        return ScrollViewKeyboardDismissBehavior.onDrag;
      case 'manual':
      default:
        return ScrollViewKeyboardDismissBehavior.manual;
    }
  }

  ///Returns the [TextLeadingDistribution] from string.
  static TextLeadingDistribution? parseTextLeadingDistribution(String? value) {
    if (value == null) return null;
    return value == "even"
        ? TextLeadingDistribution.even
        : TextLeadingDistribution.proportional;
  }

  ///Returns the [TextOverflow] from string.
  static TextOverflow? parseTextOverflow(String? value) {
    if (value == null) return null;
    switch (value) {
      case "clip":
        return TextOverflow.clip;
      case "ellipsis":
        return TextOverflow.ellipsis;
      case "fade":
        return TextOverflow.fade;
      case "visible":
      default:
        return TextOverflow.visible;
    }
  }

  ///Returns the [StackFit] from string.
  static StackFit? parseStackFit(String? value) {
    if (value == null) return null;
    switch (value) {
      case "loose":
        return StackFit.loose;
      case "expand":
        return StackFit.expand;
      case "passthrough":
        return StackFit.passthrough;
      default:
        return null;
    }
  }

  ///Returns the [VerticalDirection] from string.
  static VerticalDirection parseVerticalDirection(String? value) {
    return value == "up" ? VerticalDirection.up : VerticalDirection.down;
  }

  ///Returns the [Clip] from string.
  static Clip parseClip(String? value) {
    if (value == null) return Clip.none;

    switch (value) {
      case "antiAlias":
        return Clip.antiAlias;
      case "antiAliasWithSaveLayer":
        return Clip.antiAliasWithSaveLayer;
      case "hardEdge":
        return Clip.hardEdge;
      case "none":
      default:
        return Clip.none;
    }
  }

  ///Returns the [AutovalidateMode] from string.
  static AutovalidateMode? parseAutovalidateMode(String? value) {
    if (value == null) return null;
    switch (value) {
      case "always":
        return AutovalidateMode.always;
      case "disabled":
        return AutovalidateMode.disabled;
      case "onUserInteraction":
        return AutovalidateMode.onUserInteraction;
      default:
        return null;
    }
  }

  ///Returns the [BoxDecoration] from Map.
  static BoxDecoration? parseBoxDecoration(Map<String, dynamic>? data) {
    if (data == null) return null;
    return BoxDecoration(
      color: parseColor(data['color']),
      border: parseBorder(data['border']),
      borderRadius: parseBorderRadiusGeometry(data['borderRadius']),
      shape: (data['shape'] != null)
          ? data['shape'] == 'circle'
              ? BoxShape.circle
              : BoxShape.rectangle
          : BoxShape.rectangle,
    );
  }

  ///Returns the [Border] from Map.
  static Border? parseBorder(Map<String, dynamic>? data) {
    if (data == null) return null;

    switch (data['boxBoder']) {
      case 'symmetric':
        return Border.symmetric(
          vertical: parseBorderSide(data['value']['vertical']),
          horizontal: parseBorderSide(data['value']['horizontal']),
        );
      case 'all':
      default:
        return Border.all(
          color: parseColor(data['value']['color']) ?? Colors.transparent,
          width: OrigamiWidgetUtil.parseDouble(data['value']['width']) ?? 1.0,
          style: (data['value']['style'] == null)
              ? (data['value']['style'] == 'solid'
                  ? BorderStyle.solid
                  : BorderStyle.none)
              : BorderStyle.none,
          strokeAlign:
              OrigamiWidgetUtil.parseDouble(data['value']['strokeAlign']) ??
                  1.0,
        );
    }
  }

  ///Returns the [BorderRadiusGeometry] from Map.
  static BorderRadiusGeometry parseBorderRadiusGeometry(
      Map<String, dynamic>? data) {
    if (data == null) return BorderRadius.zero;

    BorderRadius borderRadius = BorderRadius.zero;
    switch (data['borderRadiusGeometry']) {
      case 'zero':
        borderRadius = BorderRadius.zero;
        break;
      case 'all':
        borderRadius = BorderRadius.all(
            Radius.circular(double.parse(data['value'] ?? '0')));
        break;
      case 'circular':
        borderRadius =
            BorderRadius.circular(double.parse(data['value'] ?? '0'));
        break;
      case 'vertical':
        borderRadius = BorderRadius.vertical(
            bottom: Radius.circular(double.parse(data['value']['left'] ?? '0')),
            top: Radius.circular(double.parse(data['value']['left'] ?? '0')));
        break;
      case 'horizontal':
        borderRadius = BorderRadius.horizontal(
            left: Radius.circular(double.parse(data['value']['left'] ?? '0')),
            right: Radius.circular(double.parse(data['value']['left'] ?? '0')));
        break;
      case 'only':
        borderRadius = BorderRadius.only(
          topLeft:
              Radius.circular(double.parse(data['value']['topLeft'] ?? '0')),
          topRight:
              Radius.circular(double.parse(data['value']['topRight'] ?? '0')),
          bottomLeft:
              Radius.circular(double.parse(data['value']['bottomLeft'] ?? '0')),
          bottomRight: Radius.circular(
              double.parse(data['value']['bottomRight'] ?? '0')),
        );

        break;
    }

    return borderRadius;
  }

  ///Returns the [BorderRadius] from Map.
  static BorderRadius parseBorderRadius(Map<String, dynamic>? data) {
    if (data == null) return BorderRadius.zero;

    BorderRadius borderRadius = BorderRadius.zero;
    switch (data['borderRadiusGeometry']) {
      case 'zero':
        borderRadius = BorderRadius.zero;
        break;
      case 'all':
        borderRadius = BorderRadius.all(
            Radius.circular(double.parse(data['value'] ?? '0')));
        break;
      case 'circular':
        borderRadius =
            BorderRadius.circular(double.parse(data['value'] ?? '0'));
        break;
      case 'vertical':
        borderRadius = BorderRadius.vertical(
            bottom: Radius.circular(double.parse(data['value']['left'] ?? '0')),
            top: Radius.circular(double.parse(data['value']['left'] ?? '0')));
        break;
      case 'horizontal':
        borderRadius = BorderRadius.horizontal(
            left: Radius.circular(double.parse(data['value']['left'] ?? '0')),
            right: Radius.circular(double.parse(data['value']['left'] ?? '0')));
        break;
      case 'only':
        borderRadius = BorderRadius.only(
          topLeft:
              Radius.circular(double.parse(data['value']['topLeft'] ?? '0')),
          topRight:
              Radius.circular(double.parse(data['value']['topRight'] ?? '0')),
          bottomLeft:
              Radius.circular(double.parse(data['value']['bottomLeft'] ?? '0')),
          bottomRight: Radius.circular(
              double.parse(data['value']['bottomRight'] ?? '0')),
        );

        break;
    }

    return borderRadius;
  }

  ///Returns the [BorderSide] from Map.
  static BorderSide parseBorderSide(Map<String, dynamic>? data) {
    return (data == null)
        ? BorderSide.none
        : BorderSide(
            color: parseColor(data['color']) ?? Colors.transparent,
            width: OrigamiWidgetUtil.parseDouble(data['width']) ?? 1.0,
            style: (data['style'] == null)
                ? (data['style'] == 'solid'
                    ? BorderStyle.solid
                    : BorderStyle.none)
                : BorderStyle.none,
            strokeAlign:
                OrigamiWidgetUtil.parseDouble(data['strokeAlign']) ?? 1.0,
          );
  }

  ///Returns the [InputBorder] from Map.
  static InputBorder? parseInputBorder(Map<String, dynamic>? data) {
    if (data == null) return null;

    return OutlineInputBorder(
      borderRadius: parseBorderRadius(data['borderRadius']),
      borderSide: parseBorderSide(data['borderSide']),
    );
  }

  ///Returns the [BoxFit] from string.
  static BoxFit? parseBoxFit(String? value) {
    if (value == null) return null;

    switch (value) {
      case "contain":
        return BoxFit.contain;
      case "cover":
        return BoxFit.cover;
      case "fill":
        return BoxFit.fill;
      case "fitHeight":
        return BoxFit.fitHeight;
      case "fitWidth":
        return BoxFit.fitWidth;
      case "scaleDown":
        return BoxFit.scaleDown;
      case "none":
        return BoxFit.none;
      default:
        return null;
    }
  }

  ///Returns the [LinearGradient] from string.
  static LinearGradient? parseLinearGradient(String? value) {
    if (value == null) return null;

    try {
      List<String> gradientParts = value.split(';').toList();
      if (gradientParts.length == 3) {
        List<String> gradientColors = gradientParts[2].split(',').toList();
        return LinearGradient(
          begin:
              parseAlignmentGeometry(gradientParts.first) ?? Alignment.topLeft,
          end: parseAlignmentGeometry(gradientParts.last) ??
              Alignment.bottomRight,
          colors: gradientColors
              .map((String e) => (parseColor(e) ?? Colors.transparent))
              .toList(),
        );
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
