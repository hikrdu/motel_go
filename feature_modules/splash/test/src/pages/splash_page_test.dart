import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('SplashPage test', (tester) async {
    await tester.pumpWidget(AppWidget());

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);

    final splashPageKey = find.byKey(Key('splash_page_scaffold'));
    expect(splashPageKey, findsExactly(1));

    await tester.pumpAndSettle(Duration(seconds: 2));

    Navigator.pushReplacementNamed(tester.element(find.byType(GoNowBase)), '/go-now');
    await tester.pumpAndSettle();
  });

  testWidgets('SplashPage navigation test', (tester) async {
    await tester.pumpWidget(AppWidget());

    await tester.pumpAndSettle(Duration(seconds: 2));

    Navigator.pushReplacementNamed(tester.element(find.byType(GoNowBase)), '/go-now');
    await tester.pumpAndSettle();

    final goNowKey = find.byKey(Key('go_now_base_key'));
    expect(goNowKey, findsExactly(1));
  });
}
