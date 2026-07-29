import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class ApiTemplate {
  Future<T> execute<T>({
    required Uri uri,
    required T Function(dynamic json) parser,
  }) async {
    try {
      final response = await http.get(uri);
      if (response.statusCode != 200) {
        throw Exception('Server Error ${response.statusCode}');
      }

      final json = jsonDecode(response.body);
      return parser(json);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
