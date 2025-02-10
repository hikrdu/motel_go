import 'package:app/src/app.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils_test.dart';

void main() {
  group('BuildContextExtensions', () {
    test('should return the current theme of the application', () {
      final context = MockBuildContext();
      expect(context.theme, isNotNull);
    });
  });

  group('StringExtension', () {
    test('should decode the string', () {
      final string = 'Hello, World!';
      expect(string.decode(), 'hello, world!');
    });
  });
}
