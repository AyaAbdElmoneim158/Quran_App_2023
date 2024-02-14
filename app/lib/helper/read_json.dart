import 'dart:convert';
import 'package:flutter/services.dart';

class ReadJson {
  ReadJson._();

  static Future<dynamic> readJson(String jsonFile) async {
    final String response = await rootBundle.loadString(jsonFile);
    var data = await json.decode(response);
    return data;
  }
}
