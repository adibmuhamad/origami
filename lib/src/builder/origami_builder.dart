import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql/client.dart';
import 'package:origami/src/builder/origami_widget_builder.dart';
import 'package:http/http.dart' as http;

abstract class OrigamiBuilder {
  static Widget buildFromJson(Map<String, dynamic> json) {
    try {
      // Build and return the widget
      return OrigamiWidgetBuilder.buildWidget(json);
    } catch (e) {
      // Handle exceptions
      return Container(); // or throw an error
    }
  }

  static Future<Widget> buildFromAsset(String assetPath) async {
    try {
      // Load JSON data from the asset
      String jsonString = await rootBundle.loadString(assetPath);
      Map<String, dynamic> jsonData = json.decode(jsonString);

      // Build and return the widget
      return OrigamiWidgetBuilder.buildWidget(jsonData);
    } catch (e) {
      // Handle exceptions
      return Container(); // or throw an error
    }
  }

  static Future<Widget> buildFromNetwork(String url) async {
    try {
      // Make a network request to fetch JSON data
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Parse the JSON data
        Map<String, dynamic> jsonData = json.decode(response.body);

        // Build and return the widget
        return OrigamiWidgetBuilder.buildWidget(jsonData);
      } else {
        // Handle network error
        return Container(); // or throw an error
      }
    } catch (e) {
      // Handle exceptions
      return Container(); // or throw an error
    }
  }

  static Future<Widget> buildFromGraphQL(
      String link, String query, Map<String, dynamic> variables) async {
    try {
      // Make a network request to fetch JSON data
      final GraphQLClient client =
          GraphQLClient(link: HttpLink(link), cache: GraphQLCache());
      final QueryOptions options = QueryOptions(
        document: gql(query),
        variables: variables,
      );
      final QueryResult result = await client.query(options);

      if (result.hasException) {
        return Container(); // or throw an error
      }

      if (result.data != null) {
        // Build and return the widget
        return OrigamiWidgetBuilder.buildWidget(result.data!);
      } else {
        return Container(); // or throw an error
      }
    } catch (e) {
      // Handle exceptions
      return Container(); // or throw an error
    }
  }
}
