import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_now/go_now.dart';

import '../../../util_test.dart';

void main() {
  initializeUtilTest();
  testWidgets('GoNowMainPage has title', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GoNowMainPage(),
      ),
    );
    expect(find.text('minha localização'), findsOneWidget);
  });

  testWidgets('GoNowMainPage has floating action button', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GoNowMainPage(),
      ),
    );
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('GoNowMainPage has list view', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GoNowMainPage(),
      ),
    );
    expect(find.byType(ListView), findsOneWidget);
  });

  testWidgets('GoNowMainPage has map button', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GoNowMainPage(),
      ),
    );
    expect(find.byIcon(Icons.map), findsOneWidget);
  });
  testWidgets('GoNowMainPage has app bar', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GoNowMainPage(),
      ),
    );
    expect(find.byType(AppBar), findsOneWidget);
  });

  testWidgets('GoNowMainPage has clip path', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GoNowMainPage(),
      ),
    );
    expect(find.byType(ClipPath), findsOneWidget);
  });

  testWidgets('GoNowMainPage has page app bar widget', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GoNowMainPage(),
      ),
    );
    expect(find.byType(PageAppBarWidget), findsOneWidget);
  });
}
