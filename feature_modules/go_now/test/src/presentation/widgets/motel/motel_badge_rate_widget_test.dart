import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_now/src/presentation/widgets/widgets.dart';

import '../../../../util_test.dart';

void main() {
  initializeUtilTest();
  late MockOnTap onTap;

  setUp(() {
    onTap = MockOnTap();
  });

  testWidgets('MotelBadgeRateWidget displays rate and number of reviews', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MotelBadgeRateWidget(
            rate: 4.5,
            qtdAvaliacoes: 10,
            onTap: onTap.call,
          ),
        ),
      ),
    );

    expect(find.text('4.5'), findsOneWidget);
    expect(find.text('10 avaliações'), findsOneWidget);
  });
}
