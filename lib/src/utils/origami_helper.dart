import 'dart:convert';

import 'package:flutter/services.dart';

class OrigamiHelper {
  static Future<Map<String, dynamic>?> loadAsset(
      {required String assetPath}) async {
    try {
      String jsonString = await rootBundle.loadString(assetPath);
      return json.decode(jsonString);
    } catch (e) {
      return null;
    }
  }
}
