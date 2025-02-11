import 'dart:convert';

import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../../util_test.dart';

void main() {
  initializeUtilTest();
  late GoNowRepository repository;

  setUp(() {
    repository = GoNowRepository();
  });

  group('GoNowRepository', () {
    test('fetchMotels returns BaseModel when successful', () async {
      // Arrange
      final response = http.Response(jsonEncode({'key': 'value'}), 200);
      when(() => baseRepository.get('/b/1IXK')).thenAnswer((_) async => response);

      // Act
      final result = await repository.fetchMotels();

      // Assert
      expect(result, isA<BaseModel>());
    });

    test('fetchMotels returns null when unsuccessful', () async {
      // Arrange
      when(() => baseRepository.get('/b/1IXK')).thenThrow(Exception());

      // Act
      final result = await repository.fetchMotels();

      // Assert
      expect(result, isNull);
    });
  });
}
