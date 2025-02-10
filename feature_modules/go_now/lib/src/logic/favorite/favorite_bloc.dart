import 'package:feature_module_base/feature_module_base.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial()) {
    on<FavoriteChangedEvent>((event, emit) {
      emit(FavoriteChangedState(event.isFavorited));
    });
  }

  void changeFavorite(bool isFavorited) {
    add(FavoriteChangedEvent(!isFavorited));
  }
}
