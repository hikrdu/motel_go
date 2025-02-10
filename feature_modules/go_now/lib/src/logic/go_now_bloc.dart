import 'package:feature_module_base/feature_module_base.dart';

class GoNowBloc extends Bloc<GoNowEvent, GoNowState> {
  GoNowBloc() : super(MotelsInitialState()) {
    on<FetchMotelsEvent>((event, emit) async {
      emit(MotelsLoadingState());
      try {
        await goNowRepository?.fetchMotels().then((motels) {
          emit(MotelsLoadedState(motels!));
        });
      } catch (e) {
        emit(MotelsErrorState(e.toString()));
      }
    });

    add(FetchMotelsEvent());
  }
}
