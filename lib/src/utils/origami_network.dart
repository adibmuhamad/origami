import 'dart:convert';

import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;

class OrigamiNetwork {
  static Future<Map<String, dynamic>?> fetch({
    required String url,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(response.body);
        return jsonData;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<Map<String, dynamic>?> fetchGQL({
    required String link,
    required String query,
    Map<String, dynamic>? variables,
  }) async {
    try {
      final GraphQLClient client =
          GraphQLClient(link: HttpLink(link), cache: GraphQLCache());
      final QueryOptions options = QueryOptions(
        document: gql(query),
        variables: variables ?? {},
      );
      final QueryResult result = await client.query(options);

      if (result.hasException) {
        return null;
      }

      if (result.data != null) {
        return result.data;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
