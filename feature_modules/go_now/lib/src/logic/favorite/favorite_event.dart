import 'package:feature_module_base/feature_module_base.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

class FavoriteChangedEvent extends FavoriteEvent {
  final bool isFavorited;

  const FavoriteChangedEvent(this.isFavorited);

  @override
  List<Object> get props => [isFavorited];
}
