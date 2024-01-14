import 'package:flutter/material.dart';
import 'package:origami/origami.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Example JSON data
    Map<String, dynamic> jsonData = {
      "type": "scaffold",
      "appBar": {
        "type": "appBar",
        "title": {"type": "text", "text": "Login"},
      },
      "body": {
        "type": "safeArea",
        "child": {
          "type": "column",
          "crossAxisAlignment": "center",
          "children": [
            {
              "type": "sizedBox",
              "height": "20.0",
            },
            {
              "type": "image",
              "imageType": "network",
              "value":
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSoKn8IQb33N82TB_LkwVNhgHmlqTuZTcWA&usqp=CAU",
              "height": "100.0",
            },
            {
              "type": "container",
              "padding": {
                "edgeInsetsGeometry": "all",
                "value": "16.0",
              },
              "child": {
                "type": "column",
                "crossAxisAlignment": "center",
                "children": [
                  {
                    "type": "textFormField",
                    "decoration": {
                      "labelText": "Username",
                      "hintText": "Enter your username",
                    },
                  },
                  {
                    "type": "textFormField",
                    "decoration": {
                      "labelText": "Password",
                      "hintText": "Enter your password",
                    },
                    "obscureText": "true",
                  },
                  {
                    "type": "sizedBox",
                    "height": "30.0",
                  },
                  {
                    "type": "elevatedButton",
                    "onPressed": {},
                    "child": {"type": "text", "text": "Login"},
                  },
                ],
              },
            },
            {
              "type": "text",
              "text": "Forgot password?",
              "style": {"color": "#3366CC", "fontSize": "16.0"},
            },
          ],
        }
      },
    };

    // Build the UI using OrigamiBuilder
    Widget dynamicUI = OrigamiBuilder.buildFromJson(
      context,
      json: jsonData,
    );

    return MaterialApp(
      home: dynamicUI,
    );
  }
}
