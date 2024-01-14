[![Pub](https://img.shields.io/pub/v/dynamic_widget.svg?color=orange)](https://pub.dev/packages/origami)

# Origami
>Origami is a Flutter library for building server-driven UIs. It allows you to define UI components and their configurations using JSON, enabling dynamic UI updates without requiring code changes.

## Use Case
>Sometimes as Mobile Developers, we are required to deliver applications as soo as possible. Moreover, UI changes can occur every week. But if there is a bug or you are asked to modify the UIs, you need to publish the updated app to the app store. This requires time and costs. We need to build flexible pages.
So we define a light UI protocol, and implement it on Android and iOS. We can dynamically update App UIs by pushing a json file. With this capability, we can do some UI A/B testing without publishing App to app store. With this project, you can build your UIs from a json string, which is the UI protocol. The json string is very similar to the Flutter widget dart code. All widget types and widget properties are the same.

![Example](https://raw.githubusercontent.com/adibmuhamad/origami/main/screenshots/example.png)

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

## Contributing

Feel free to contribute! Here's how you can contribute:

- [Open an issue](https://github.com/adibmuhamad/origami/issues) if you believe you've encountered a bug.
- Make a [pull request](https://github.com/adibmuhamad/origami/pull) to add new features/make quality-of-life improvements/fix bugs.

## Author

- Muhammad Adib Yusrul Muna

## License
Copyright © 2024 Muhammad Adib Yusrul Muna

This software is distributed under the MIT license. See the [LICENSE](https://github.com/adibmuhamad/origami/blob/main/LICENSE) file for the full license text.