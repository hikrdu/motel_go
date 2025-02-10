import 'package:feature_module_base/feature_module_base.dart';

abstract class GoNowEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchMotelsEvent extends GoNowEvent {}
