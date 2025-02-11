import 'dart:convert';

import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../../utils_test.dart';

void main() {
  initializeUtilTest();
  group('BaseRepository tests', () {
    final baseUrl = 'https://www.example.com/';
    late MockClient client;
    late BaseRepository repository;

    setUp(() {
      client = MockClient();
      repository = BaseRepository(client: client, baseUrl: baseUrl);
    });

    test('should make GET request', () async {
      // Arrange
      final url = Uri.parse('$baseUrl/path');
      final headers = {'Content-Type': 'application/json'};
      final response = http.Response('{"key": "value"}', 200);

      // Mock the GET request
      when(() => client.get(url, headers: headers)).thenAnswer((_) async => response);
      // Act
      final result = await repository.get('/path', headers: headers);

      // Assert
      expect(result.statusCode, 200);
      expect(jsonDecode(result.body)['key'], 'value');

      // Verify that the GET method was called
      verify(() => client.get(url, headers: headers)).called(1);
    });
    test('should make POST request', () async {
      // Arrange
      final url = Uri.parse('$baseUrl/path');
      final headers = {'Content-Type': 'application/json'};
      final body = {'key': 'value'};
      final response = http.Response('Success', 200);

      when(() => client.post(url, headers: headers, body: json.encode(body))).thenAnswer((_) async => response);

      // Act
      final result = await repository.post('/path', headers: headers, body: body);

      // Assert
      expect(result.statusCode, 200);
      expect(result.body, 'Success');
    });

    test('should make PUT request', () async {
      // Arrange
      final url = Uri.parse('$baseUrl/path');
      final headers = {'Content-Type': 'application/json'};
      final body = {'key': 'value'};
      final response = http.Response('Success', 200);

      when(() => client.put(url, headers: headers, body: json.encode(body))).thenAnswer((_) async => response);

      // Act
      final result = await repository.put('/path', headers: headers, body: body);

      // Assert
      expect(result.statusCode, 200);
      expect(result.body, 'Success');
    });

    test('should make DELETE request', () async {
      // Arrange
      final url = Uri.parse('$baseUrl/path');
      final headers = {'Content-Type': 'application/json'};
      final response = http.Response('Success', 200);

      when(() => client.delete(url, headers: headers)).thenAnswer((_) async => response);

      // Act
      final result = await repository.delete('/path', headers: headers);

      // Assert
      expect(result.statusCode, 200);
      expect(result.body, 'Success');
    });

    test('should throw exception for unsupported HTTP method', () async {
      // Act and Assert
      expect(() async => await repository.interceptRequest(Uri.parse('$baseUrl/path'), {}, 'PATCH'), throwsException);
    });

    test('should close client', () async {
      // Act
      repository.close();

      // Assert
      verify(() => client.close()).called(1);
    });

    test('should handle response', () async {
      // Arrange
      final response = http.Response('Success', 200);

      // Act
      repository.handleResponse(response);

      // Assert
      expect(response.statusCode, 200);
    });
  });
}
