import 'package:feature_module_base/feature_module_base.dart';

abstract class ReservationEvent extends Equatable {
  const ReservationEvent();

  @override
  List<Object> get props => [];
}

class ReservationChangedEvent extends ReservationEvent {
  final bool privacyChecked;

  const ReservationChangedEvent(this.privacyChecked);

  @override
  List<Object> get props => [privacyChecked];
}
