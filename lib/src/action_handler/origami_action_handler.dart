import 'package:flutter/material.dart';
import 'package:origami/src/widgets/dialog_action.dart';

// Example 1
// { "type": "navigate", "action": "pop", "context": "context", "data": "screen" }

// Example 2
// { "type": "showDialog", "context": "context", "data": { "title": "Test", "content": "Test", "actions": [] } }



class OrigamiActionHandler {
  static void handleAction(Map<dynamic, dynamic> action) {
    if (action.containsKey('type')) {
      String actionType = action['type'];
      switch (actionType) {
        case 'showDialog':
          _showDialog(action);
          break;
        case 'navigate':
          _navigate(action);
          break;
        default:
          break;
      }
    }
  }

  static void _showDialog(Map<dynamic, dynamic> data) {
    showDialog(
      context: data['context'],
      builder: (context) {
        return AlertDialog(
          title: Text(data['title'] ?? 'Default Title'),
          content: Text(data['content'] ?? 'Default Content'),
          actions: DialogActions.buildDialogActions(context, data['actions']),
        );
      },
    );
  }

  static void _navigate(Map<dynamic, dynamic> data) {
    switch (data['action']) {
        case 'popAndPushNamed':
        Navigator.of(data['context']).popAndPushNamed(data['data']);
        break;
      case 'pushNamed':
        Navigator.of(data['context']).pushNamed(data['data']);
        break;
      case 'pop':
        Navigator.of(data['context']).pop();
        break;
    }
    
  }
}
