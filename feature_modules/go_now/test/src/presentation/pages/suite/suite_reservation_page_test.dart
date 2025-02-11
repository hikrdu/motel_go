import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../util_test.dart';

void main() {
  initializeUtilTest();
  group('SuiteReservationPage', () {
    late SuiteModel suite;
    late PeriodModel period;
    late MotelModel motel;

    setUp(() {
      suite = SuiteModel();
      period = PeriodModel();
      motel = MotelModel();
    });

    testWidgets('renders SuiteImageCarouselWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SuiteReservationPage(
            suite: suite,
            period: period,
            motel: motel,
          ),
        ),
      );
      expect(find.byType(SuiteImageCarouselWidget), findsOneWidget);
    });

    testWidgets('renders MotelInfoWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SuiteReservationPage(
            suite: suite,
            period: period,
            motel: motel,
          ),
        ),
      );
      expect(find.byType(MotelInfoWidget), findsOneWidget);
    });

    testWidgets('renders SuiteReservationDetailsWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SuiteReservationPage(
            suite: suite,
            period: period,
            motel: motel,
          ),
        ),
      );
      expect(find.byType(SuiteReservationDetailsWidget), findsOneWidget);
    });

    testWidgets('renders SuiteReservationMoreWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SuiteReservationPage(
            suite: suite,
            period: period,
            motel: motel,
          ),
        ),
      );
      expect(find.byType(SuiteReservationMoreWidget), findsOneWidget);
    });

    testWidgets('renders SuiteReservationPolicyWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SuiteReservationPage(
            suite: suite,
            period: period,
            motel: motel,
          ),
        ),
      );
      expect(find.byType(SuiteReservationPolicyWidget), findsOneWidget);
    });

    testWidgets('renders SuiteBottomBarWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SuiteReservationPage(
            suite: suite,
            period: period,
            motel: motel,
          ),
        ),
      );
      expect(find.byType(SuiteBottomBarWidget), findsOneWidget);
    });

    testWidgets('renders checkbox', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SuiteReservationPage(
            suite: suite,
            period: period,
            motel: motel,
          ),
        ),
      );
      expect(find.byType(Checkbox), findsOneWidget);
    });
  });
}
