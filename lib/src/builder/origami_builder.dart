import 'package:flutter/material.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:origami/src/utils/index.dart';

abstract class OrigamiBuilder {
  static Widget buildFromJson(BuildContext context,
      {required Map<String, dynamic> json}) {
    try {
      return OrigamiWidgetBuilder.buildWidget(context, json);
    } catch (e, stackTrace) {
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
      return Container();
    }
  }

  static Future<Widget> buildFromAsset(BuildContext context,
      {required String assetPath}) async {
    try {
      FutureBuilder<Map<String, dynamic>?>(
        future: OrigamiHelper.loadAsset(assetPath: assetPath),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.hasData) {
                Map<String, dynamic>? jsonData = snapshot.data;
                if (jsonData != null) {
                  return OrigamiWidgetBuilder.buildWidget(context, jsonData);
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

  static Future<Widget> buildFromNetwork(BuildContext context,
      {required String url}) async {
    try {
      FutureBuilder<Map<String, dynamic>?>(
        future: OrigamiNetwork.fetch(url: url),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.hasData) {
                Map<String, dynamic>? jsonData = snapshot.data;
                if (jsonData != null) {
                  return OrigamiWidgetBuilder.buildWidget(context, jsonData);
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
                  return OrigamiWidgetBuilder.buildWidget(context, jsonData);
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
