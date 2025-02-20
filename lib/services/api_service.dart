import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_clone/config/api_json.dart';
import 'package:google_clone/config/api_keys.dart';
import 'package:http/http.dart' as http;

class ApiService {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = '0', required BuildContext context}) async {
    try {
      if (!isDummyData) {
        String q = Uri.encodeQueryComponent(queryTerm);

        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );

        if (response.statusCode == 200) {
          return json.decode(response.body);
        }
      }
    } catch (e) {
      print('Error: ${e.toString()}');
    }
    return apiResponse;
  }
}
