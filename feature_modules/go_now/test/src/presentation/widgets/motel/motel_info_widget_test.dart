import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../util_test.dart';

void main() {
  initializeUtilTest();
  late MockMotelModel motelModel;

  setUpAll(() {
    motelModel = MockMotelModel();
  });
  tearDown(() {
    // Reset mocktail state after each test
    reset(mockClient);
  });
  group('MotelInfoWidget', () {
    testWidgets('renders ListTile with motel information', (tester) async {
      when(() => motelModel.fantasia).thenReturn('Test Motel');
      when(() => motelModel.distancia).thenReturn(1.23);
      when(() => motelModel.bairro).thenReturn('Test Bairro');
      when(() => motelModel.media).thenReturn(4.5);
      when(() => motelModel.qtdAvaliacoes).thenReturn(100);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelInfoWidget(
              motel: motelModel,
              onTap: () {},
            ),
          ),
        ),
      );

      final fantasyKey = find.byKey(Key('fantasy_key'));
      final fantasyWidget = tester.widget(fantasyKey) as Text;
      expect(fantasyWidget.data, 'test motel');
      expect(find.text('test motel'), findsOneWidget);

      final distanceKey = find.byKey(Key('distance_key'));
      final distanceWidget = tester.widget(distanceKey) as Text;
      expect(distanceWidget.data, '1.23 km - test bairro');
      expect(find.text('1.23 km - test bairro'), findsOneWidget);

      expect(find.byType(MotelBadgeRateWidget), findsOneWidget);
    });

    testWidgets('renders more info button when showMoreInfo is true', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelInfoWidget(
              motel: motelModel,
              showMoreInfo: true,
              onTap: () {},
            ),
          ),
        ),
      );
      final moreInfoKey = find.byKey(Key('more_info_key'));
      await tester.tap(moreInfoKey);

      expect(find.text('mais info'), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_down), findsOneWidget);
    });

    testWidgets('renders favorite button when showMoreInfo is false', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MotelInfoWidget(
              motel: motelModel,
              showMoreInfo: false,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.favorite), findsOneWidget);
    });
  });
}
