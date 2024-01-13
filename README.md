# Origami

---

Origami is a Flutter library for building server-driven UIs. It allows you to define UI components and their configurations using JSON, enabling dynamic UI updates without requiring code changes.

## Installation

To use Origami in your Flutter project, follow these steps:

1. Install the Origami library to your `pubspec.yaml` file:

```bash
flutter pub add origami
```

## Example

Here's a simple example of using Origami to build a server-driven UI.

### Server

```json
{
      "type": "scaffold",
      "appBar": {
        "type": "appBar",
        "title": {"type": "text", "text": "My App"},
        "backgroundColor": "#2196F3",
        "actions": [
          {
            "type": "iconButton",
            "icon": {
              "type": "icon",
              "iconData": "searchWeb",
              "color": "#FFFFFF"
            },
            "onPressed": {}
          }
        ]
      },
      "body": {
        "type": "column",
        "children": [
          {
            "type": "container",
            "color": "#FF0000",
            "width": 200.0,
            "height": 100.0,
            "child": {
              "type": "text",
              "text": "Hello, Origami!",
              "style": {
                "fontSize": 20.0,
                "color": "#FFFFFF",
              }
            }
          },
          {
            "type": "row",
            "children": [
              {
                "type": "textButton",
                "onPressed": {},
                "child": {"type": "text", "text": "Press me!"}
              },
              {"type": "sizedBox", "width": 20.0},
              {
                "type": "elevatedButton",
                "onPressed": {},
                "child": {"type": "text", "text": "Submit"}
              }
            ]
          },
          {
            "type": "singleChildScrollView",
            "child": {
              "type": "column",
              "children": [
                {
                  "type": "image",
                  "imageType": "network",
                  "value": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  "width": 300.0,
                  "height": 150.0
                },
                {
                  "type": "placeholder",
                  "color": "#00FF00",
                  "fallbackWidth": 100.0,
                  "fallbackHeight": 200.0
                }
              ]
            }
          }
        ]
      }
    }
```

### Flutter

```dart
import 'package:flutter/material.dart';
import 'package:origami/origami.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> jsonData = /* Your JSON data */;
    Widget dynamicUI = OrigamiWidgetBuilder.buildWidget(jsonData);

    return MaterialApp(
      home: dynamicUI,
    );
  }
}
```