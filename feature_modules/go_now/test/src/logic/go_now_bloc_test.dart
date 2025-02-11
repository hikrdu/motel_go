import 'package:bloc_test/bloc_test.dart';
import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../util_test.dart';

void main() {
  initializeUtilTest();
  late MockGoNowRepository mockGoNowRepository;
  late GoNowBloc goNowBloc;

  setUp(() {
    mockGoNowRepository = MockGoNowRepository();
    goNowBloc = GoNowBloc();
  });

  group('GoNowBloc', () {
    blocTest<GoNowBloc, GoNowState>(
      'emits [MotelsLoadingState, MotelsErrorState] when FetchMotelsEvent is added and fetchMotels throws an exception',
      build: () {
        goNowRepository = MockGoNowRepository();
        when(() => mockGoNowRepository.fetchMotels()).thenThrow(Exception('Test exception'));
        return goNowBloc;
      },
      act: (bloc) => bloc.add(FetchMotelsEvent()),
      expect: () => [
        isA<MotelsErrorState>(),
      ],
    );
  });
}
