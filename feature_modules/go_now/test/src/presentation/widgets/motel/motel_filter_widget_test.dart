import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../util_test.dart';

void main() {
  initializeUtilTest();

  setUp(() {});

  testWidgets('MotelFilterWidget displays filters horizontally', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MotelFilterWidget(),
        ),
      ),
    );

    final chips = find.byType(Chip);
    expect(chips, findsWidgets);

    final chip1 = chips.first;
    final chip2 = chips.at(1);

    expect(tester.getTopLeft(chip1).dx, lessThan(tester.getTopLeft(chip2).dx));
  });
}
