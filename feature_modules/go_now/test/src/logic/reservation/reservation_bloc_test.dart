import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_now/src/logic/logic.dart';

import '../../../util_test.dart';

void main() {
  initializeUtilTest();
  group('ReservationBloc', () {
    late ReservationBloc reservationBloc;

    setUp(() {
      reservationBloc = ReservationBloc();
    });

    test('initial state is ReservationInitial', () {
      expect(reservationBloc.state, isA<ReservationInitial>());
    });

    blocTest<ReservationBloc, ReservationState>(
      'emits ReservationChangedState when ReservationChangedEvent is added',
      build: () => reservationBloc,
      act: (bloc) {
        bloc.add(ReservationChangedEvent(true));
      },
      expect: () => [isA<ReservationChangedState>()],
    );

    blocTest<ReservationBloc, ReservationState>(
      'emits ReservationChangedState with correct privacyChecked when ReservationChangedEvent is added',
      build: () => reservationBloc,
      act: (bloc) => bloc.add(ReservationChangedEvent(true)),
      expect: () => [ReservationChangedState(true)],
    );

    blocTest<ReservationBloc, ReservationState>(
      'emits ReservationChangedState with toggled privacyChecked when changeReservation is called',
      build: () => reservationBloc,
      act: (bloc) => bloc.changePrivacy(true),
      expect: () => [ReservationChangedState(false)],
    );

    blocTest<ReservationBloc, ReservationState>(
      'emits ReservationChangedState with toggled privacyChecked when changeReservation is called again',
      build: () => reservationBloc,
      act: (bloc) => bloc.changePrivacy(false),
      expect: () => [ReservationChangedState(true)],
    );
  });
}
