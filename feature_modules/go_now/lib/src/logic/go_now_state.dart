import 'package:feature_module_base/feature_module_base.dart';

abstract class GoNowState extends Equatable {
  const GoNowState();
  @override
  List<Object> get props => [];
}

class MotelsInitialState extends GoNowState {
  const MotelsInitialState();
}

class MotelsLoadingState extends GoNowState {
  const MotelsLoadingState();
}

class MotelsLoadedState extends GoNowState {
  final BaseModel base;

  const MotelsLoadedState(this.base);
}

class MotelsErrorState extends GoNowState {
  final String error;

  const MotelsErrorState(this.error);
}
