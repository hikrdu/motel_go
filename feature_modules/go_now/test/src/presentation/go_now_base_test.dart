import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../util_test.dart';

void main() {
  initializeUtilTest();
  late MockGoNowBloc mockGoNowBloc;

  setUp(() {
    mockGoNowBloc = MockGoNowBloc();
  });

  group('GoNowBase', () {
    testWidgets('renders CircularProgressIndicator when state is MotelsLoadingState', (tester) async {
      when(() => mockGoNowBloc.state).thenReturn(MotelsLoadingState());

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<GoNowBloc>(
            create: (context) => mockGoNowBloc,
            child: GoNowBase(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders GoNowMainPage when state is MotelsLoadedState', (tester) async {
      goNowRepository = MockGoNowRepository();
      when(() => mockGoNowBloc.state).thenReturn(MotelsLoadedState(MockBaseModel()));
      when(() => goNowRepository?.fetchMotels()).thenAnswer((_) async => MockBaseModel());

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<GoNowBloc>(
            create: (context) => mockGoNowBloc,
            child: GoNowBase(),
          ),
        ),
      );

      // Ensure the state is set to MotelsLoadedState
      mockGoNowBloc.emit(MotelsLoadedState(MockBaseModel()));
      await tester.pumpAndSettle();

      expect(find.byType(GoNowMainPage), findsOneWidget);
    });

    testWidgets('renders error message when state is MotelsErrorState', (tester) async {
      goNowRepository = MockGoNowRepository();
      when(() => mockGoNowBloc.state).thenReturn(MotelsErrorState('error'));
      when(() => goNowRepository?.fetchMotels()).thenAnswer((_) async => null);

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<GoNowBloc>(
            create: (context) => mockGoNowBloc,
            child: GoNowBase(),
          ),
        ),
      );

      // Ensure the state is set to MotelsLoadedState
      mockGoNowBloc.emit(MotelsErrorState('error'));
      await tester.pumpAndSettle();

      expect(find.byKey(Key('error_key')), findsOneWidget);
    });
  });
}
