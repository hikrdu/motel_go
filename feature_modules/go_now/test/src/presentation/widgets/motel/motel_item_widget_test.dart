import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMotelModel extends Mock implements MotelModel {}

void main() {
  group('MotelItemWidget', () {
    late MockMotelModel motelModel;

    setUpAll(() {
      motelModel = MockMotelModel();
    });

    testWidgets('renders MotelFilterWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelItemWidget(motel: motelModel),
          ),
        ),
      );

      expect(find.byType(MotelFilterWidget), findsOneWidget);
    });

    testWidgets('renders MotelInfoWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelItemWidget(motel: motelModel),
          ),
        ),
      );

      expect(find.byType(MotelInfoWidget), findsOneWidget);
    });

    testWidgets('renders PageView', (tester) async {
      when(() => motelModel.suites).thenReturn([
        SuiteModel(),
        SuiteModel(),
      ]);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelItemWidget(motel: motelModel),
          ),
        ),
      );

      expect(find.byType(PageView), findsOneWidget);
    });
  });
}
