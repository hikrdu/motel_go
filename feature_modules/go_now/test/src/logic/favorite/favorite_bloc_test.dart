import 'package:bloc_test/bloc_test.dart';
import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../util_test.dart';

void main() {
  initializeUtilTest();
  group('FavoriteBloc', () {
    late FavoriteBloc favoriteBloc;

    setUp(() {
      favoriteBloc = FavoriteBloc();
    });

    test('initial state is FavoriteInitial', () {
      expect(favoriteBloc.state, isA<FavoriteInitial>());
    });

    blocTest<FavoriteBloc, FavoriteState>(
      'emits FavoriteChangedState when FavoriteChangedEvent is added',
      build: () => favoriteBloc,
      act: (bloc) {
        bloc.add(FavoriteChangedEvent(true));
      },
      expect: () => [isA<FavoriteChangedState>()],
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'emits FavoriteChangedState with correct isFavorited when FavoriteChangedEvent is added',
      build: () => favoriteBloc,
      act: (bloc) => bloc.add(FavoriteChangedEvent(true)),
      expect: () => [FavoriteChangedState(true)],
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'emits FavoriteChangedState with toggled isFavorited when changeFavorite is called',
      build: () => favoriteBloc,
      act: (bloc) => bloc.changeFavorite(true),
      expect: () => [FavoriteChangedState(false)],
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'emits FavoriteChangedState with toggled isFavorited when changeFavorite is called again',
      build: () => favoriteBloc,
      act: (bloc) => bloc.changeFavorite(false),
      expect: () => [FavoriteChangedState(true)],
    );
  });
}
