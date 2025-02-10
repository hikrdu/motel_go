import 'package:feature_module_base/feature_module_base.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object> get props => [];
}

class FavoriteInitial extends FavoriteState {}

class FavoriteChangedState extends FavoriteState {
  final bool isFavorited;

  const FavoriteChangedState(this.isFavorited);

  @override
  List<Object> get props => [isFavorited];
}
