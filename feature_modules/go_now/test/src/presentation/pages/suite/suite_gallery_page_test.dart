import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../util_test.dart';

void main() {
  late MockSuiteModel suiteModel;
  late SuiteGalleryPage page;

  setUp(() {
    suiteModel = MockSuiteModel();
    page = SuiteGalleryPage(suite: suiteModel);
  });

  testWidgets('should display suite name in app bar', (tester) async {
    when(() => suiteModel.nome).thenReturn('Suite Name');
    await tester.pumpWidget(MaterialApp(home: page));
    expect(find.text('suite name'), findsOneWidget);
  });
}
