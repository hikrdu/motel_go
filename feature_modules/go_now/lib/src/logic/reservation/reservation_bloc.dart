import 'package:feature_module_base/feature_module_base.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  ReservationBloc() : super(ReservationInitial()) {
    on<ReservationChangedEvent>((event, emit) {
      emit(ReservationChangedState(event.privacyChecked));
    });
  }

  void changePrivacy(bool privacyChecked) {
    add(ReservationChangedEvent(!privacyChecked));
  }
}
