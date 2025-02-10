import 'dart:convert';

import 'package:app/src/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class BaseRepository {
  final http.Client client;
  final String baseUrl;

  // Constructor to accept baseUrl and HTTP client
  BaseRepository({
    http.Client? client,
    String? baseUrl,
  })  : client = client ?? http.Client(),
        baseUrl = baseUrl ?? AppConstants.kBaseUrl;

  // Interceptor method to manipulate or log requests before sending them
  Future<http.Response> interceptRequest(Uri url, Map<String, String> headers, String method, {Object? body}) async {
    // Log the request details before making the request

    // Add headers if need (e.g: token)
    // headers.addAll({
    //   'Authentication': 'Bearer $token',
    //   });

    // Make the request using the method
    switch (method) {
      case 'GET':
        return await client.get(url, headers: headers);
      case 'POST':
        return await client.post(url, headers: headers, body: json.encode(body));
      case 'PUT':
        return await client.put(url, headers: headers, body: json.encode(body));
      case 'DELETE':
        return await client.delete(url, headers: headers);
      default:
        throw Exception('Unsupported HTTP method: $method');
    }
  }

  // General GET method
  Future<http.Response> get(String path, {Map<String, String>? headers}) async {
    final Uri url = Uri.parse('$baseUrl$path');
    return await interceptRequest(url, headers ?? {}, 'GET');
  }

  // General POST method
  Future<http.Response> post(String path, {Map<String, String>? headers, Object? body}) async {
    final Uri url = Uri.parse('$baseUrl$path');
    return await interceptRequest(url, headers ?? {}, 'POST', body: body);
  }

  // General PUT method
  Future<http.Response> put(String path, {Map<String, String>? headers, Object? body}) async {
    final Uri url = Uri.parse('$baseUrl$path');
    return await interceptRequest(url, headers ?? {}, 'PUT', body: body);
  }

  // General DELETE method
  Future<http.Response> delete(String path, {Map<String, String>? headers}) async {
    final Uri url = Uri.parse('$baseUrl$path');
    return await interceptRequest(url, headers ?? {}, 'DELETE');
  }

  // Handle response (example)
  void handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      if (kDebugMode) print('Success: ${response.body}');
    } else {
      if (kDebugMode) print('Error: ${response.statusCode} - ${response.body}');
    }
  }

  // Close client when done (important to avoid memory leaks)
  void close() {
    client.close();
  }
}
