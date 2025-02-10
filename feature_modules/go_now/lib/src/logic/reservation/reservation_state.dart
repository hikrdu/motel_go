import 'package:feature_module_base/feature_module_base.dart';

abstract class ReservationState extends Equatable {
  const ReservationState();

  @override
  List<Object> get props => [];
}

class ReservationInitial extends ReservationState {}

class ReservationChangedState extends ReservationState {
  final bool privacyChecked;

  const ReservationChangedState(this.privacyChecked);

  @override
  List<Object> get props => [privacyChecked];
}
