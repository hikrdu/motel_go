import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../util_test.dart';

void main() {
  late MockSuiteModel suiteModel;
  late MockNavigatorObserver navigatorObserver;

  setUp(() {
    suiteModel = MockSuiteModel();
    navigatorObserver = MockNavigatorObserver();
  });

  testWidgets('SuiteItemsPage displays suite name', (tester) async {
    when(() => suiteModel.nome).thenReturn('Suite Name');

    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [navigatorObserver],
        home: SuiteItemsPage(suite: suiteModel),
      ),
    );

    expect(find.text('suite name'), findsOneWidget);
  });

  testWidgets('SuiteItemsPage displays items', (tester) async {
    when(() => suiteModel.itens).thenReturn([
      ItemModel(nome: 'Item 1'),
      ItemModel(nome: 'Item 2'),
    ]);

    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [navigatorObserver],
        home: SuiteItemsPage(suite: suiteModel),
      ),
    );

    expect(find.text('item 1, item 2'), findsOneWidget);
  });

  testWidgets('SuiteItemsPage handles null category items', (tester) async {
    when(() => suiteModel.categoriaItens).thenReturn(null);

    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [navigatorObserver],
        home: SuiteItemsPage(suite: suiteModel),
      ),
    );

    expect(find.byType(Wrap), findsNothing);
  });
}
