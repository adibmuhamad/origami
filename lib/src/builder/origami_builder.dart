import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/index.dart';

abstract class OrigamiBuilder {
  final Map<String, dynamic>? controllers;
  final Function(dynamic params)? onMethodCall;
  final Map<String, Function(dynamic params)>? onListener;

  OrigamiBuilder({
    this.controllers,
    this.onMethodCall,
    this.onListener,
  });

  static Widget buildFromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) {
    try {
      return OrigamiWidgetBuilder.buildWidget(
        context,
        json,
        controllers: controllers,
        onMethodCall: onMethodCall,
        onListeners: onListeners,
      );
    } catch (e, stackTrace) {
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
      return Container();
    }
  }

  static Future<Widget> buildFromAsset(
    BuildContext context, {
    required String assetPath,
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) async {
    try {
      FutureBuilder<Map<String, dynamic>?>(
        future: OrigamiHelper.loadAsset(assetPath: assetPath),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.hasData) {
                Map<String, dynamic>? jsonData = snapshot.data;
                if (jsonData != null) {
                  return OrigamiWidgetBuilder.buildWidget(
                    context,
                    jsonData,
                    controllers: controllers,
                    onMethodCall: onMethodCall,
                    onListeners: onListeners,
                  );
                } else {
                  return const SizedBox();
                }
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return const SizedBox();
              }
            default:
              return const SizedBox();
          }
        },
      );
    } catch (e, stackTrace) {
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
      return Container();
    }
    return const SizedBox();
  }

  static Future<Widget> buildFromNetwork(
    BuildContext context, {
    required String url,
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) async {
    try {
      FutureBuilder<Map<String, dynamic>?>(
        future: OrigamiNetwork.fetch(url: url),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.hasData) {
                Map<String, dynamic>? jsonData = snapshot.data;
                if (jsonData != null) {
                  return OrigamiWidgetBuilder.buildWidget(
                    context,
                    jsonData,
                    controllers: controllers,
                    onMethodCall: onMethodCall,
                    onListeners: onListeners,
                  );
                } else {
                  return const SizedBox();
                }
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return const SizedBox();
              }
            default:
              return const SizedBox();
          }
        },
      );
    } catch (e, stackTrace) {
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
      return Container();
    }
    return const SizedBox();
  }

  static Future<Widget> buildFromGraphQL(
    BuildContext context, {
    required String link,
    required String query,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? controllers,
    Function(dynamic params)? onMethodCall,
    Map<String, Function(dynamic params)>? onListeners,
  }) async {
    try {
      FutureBuilder<Map<String, dynamic>?>(
        future: OrigamiNetwork.fetchGQL(
            link: link, query: query, variables: variables),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.hasData) {
                Map<String, dynamic>? jsonData = snapshot.data;
                if (jsonData != null) {
                  return OrigamiWidgetBuilder.buildWidget(
                    context,
                    jsonData,
                    controllers: controllers,
                    onMethodCall: onMethodCall,
                    onListeners: onListeners,
                  );
                } else {
                  return const SizedBox();
                }
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return const SizedBox();
              }
            default:
              return const SizedBox();
          }
        },
      );
    } catch (e, stackTrace) {
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
      return Container();
    }
    return const SizedBox();
  }
}
