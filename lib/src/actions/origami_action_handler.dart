import 'package:flutter/material.dart';
import 'package:origami/src/builder/index.dart';

class OrigamiActionHandler {
  static Future<dynamic>? handleAction(
      BuildContext context, Map<dynamic, dynamic> action) {
    if (action.containsKey('type')) {
      String actionType = action['type'];
      switch (actionType) {
        case 'showDialog':
          return _showDialog(context, action);
        case 'bottomShee':
          return _showBottomSheet(context, action);
        case 'navigate':
          return _navigate(context, action);
      }
    }
    return null;
  }

  static Future<dynamic>? _showDialog(
      BuildContext context, Map<dynamic, dynamic> data) {
    return showDialog(
      context: context,
      builder: (context) {
        return OrigamiWidgetBuilder.buildWidget(context, data['data']);
      },
    );
  }

  static Future<dynamic>? _showBottomSheet(
      BuildContext context, Map<dynamic, dynamic> data) {
    return showModalBottomSheet(
      context: context,
      builder: (_) => OrigamiWidgetBuilder.buildWidget(context, data['data']),
    );
  }

  static Future<dynamic>? _navigate(
      BuildContext context, Map<dynamic, dynamic> data) {
    switch (data['action']) {
      case 'pushNamed':
        return Navigator.of(context).pushNamed(data['data']);
      case 'popAndPushNamed':
        return Navigator.of(context).popAndPushNamed(data['data']);
      case 'pop':
        Navigator.of(context).pop();
        break;
      case 'popAll':
        Navigator.of(context).popUntil(ModalRoute.withName('/'));
        break;
    }
    return null;
  }
}
