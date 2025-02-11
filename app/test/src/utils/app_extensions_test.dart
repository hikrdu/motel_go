import 'package:app/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils_test.dart';

void main() {
  initializeUtilTest();
  testWidgets('BuildContextExtensions test', (WidgetTester tester) async {
    final BuildContext context = tester.element(find.byType(Container));

    // Theme test
    final theme = context.theme;
    expect(theme, isNotNull);

    // MediaQuery test
    final mediaQuery = context.mediaQuery;
    expect(mediaQuery, isNotNull);

    // ScreenSize test
    final screenSize = context.screenSize;
    expect(screenSize, isNotNull);
  });

  test('StringExtension test', () {
    const encodedString = 'ChÃ¡cara Flora - SÃ£o Paulo';
    final decodedString = encodedString.decode();
    expect(decodedString, 'chácara flora - são paulo');
  });
}
