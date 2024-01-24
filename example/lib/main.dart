import 'package:flutter/material.dart';
import 'package:origami/origami.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Define your theme data
    ThemeData appTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.amber,
      ),

      // Add more theme settings...
    );

    // Set the theme data in OrigamiBuilder
    OrigamiBuilder.themeData = appTheme;

    // Define controllers map in your main widget state
    Map<String, dynamic> controllers = {
      'username': TextEditingController(),
      'password': TextEditingController(),
      // Add more controllers as needed
    };

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
                    "controller": "username",
                    "onListeners": {
                      "onChanged": {"method": "usernameChanged"},
                      "onFieldSubmitted": {"method": "usernameSubmitted"}
                    }
                  },
                  {
                    "type": "textFormField",
                    "decoration": {
                      "labelText": "Password",
                      "hintText": "Enter your password",
                    },
                    "obscureText": "true",
                    "controller": "password",
                  },
                  {
                    "type": "sizedBox",
                    "height": "30.0",
                  },
                  {
                    "type": "elevatedButton",
                    "onPressed": {
                      "method": "loginButtonPressed",
                      "params": {
                        "username": "exampleUsername",
                        "password": "examplePassword",
                      }
                    },
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
            {
              "type": "sizedBox",
              "height": "30.0",
            },
            {
              "type": "customWidget1",
            },
            {
              "type": "customWidget2",
            },
          ],
        }
      },
    };

    // Register default builders
    OrigamiBuilder.registerCustomBuildersFromJsonList([
      {
        "type": "customWidget1",
        "builder": (BuildContext context, Map<String, dynamic> data,
            {Map<String, dynamic>? controllers,
            Function(dynamic params)? onMethodCall,
            Map<String, Function(dynamic params)>? onListeners}) {
          return const Text("Your Dynamic Widget");
        }
      },
      {
        "type": "customWidget2",
        "builder": (BuildContext context, Map<String, dynamic> data,
            {Map<String, dynamic>? controllers,
            Function(dynamic params)? onMethodCall,
            Map<String, Function(dynamic params)>? onListeners}) {
          return const Text("Your Dynamic Widget 2");
        }
      },
      // Add more custom widgets as needed
    ]);

    return MaterialApp(
      home: OrigamiBuilder.buildFromJson(
        context,
        json: jsonData,
        controllers: controllers,
        onListeners: {
          'onChanged': (dynamic params) {
            // Handle the 'onChanged' event
            debugPrint('Text changed with parameters: $params');
          },
          'onFieldSubmitted': (dynamic params) {
            // Handle the 'onFieldSubmitted' event
            debugPrint('Text changed with parameters: $params');
          },
        },
        onMethodCall: (dynamic params) {
          // Handle different method calls based on the method name
          if (params != null && params['method'] != null) {
            String methodName = params['method'];
            Map<String, dynamic>? methodParams = params['params'];

            // Perform logic based on the method name
            switch (methodName) {
              case 'loginButtonPressed':
                if (methodParams != null) {
                  String username = controllers['username']!.text;
                  String password = controllers['password']!.text;
                  debugPrint(
                      "Login button pressed with username: $username, password: $password");
                  debugPrint(
                      "Login button pressed with username: $username, password: $password");
                  // Add your login logic here using the provided parameters
                }
                break;
              // Add more cases for other method names as needed
            }
          }
        },
      ),
    );
  }
}
