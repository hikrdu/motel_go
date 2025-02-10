import 'package:feature_module_base/feature_module_base.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(CarouselInitial()) {
    on<PageChanged>((event, emit) {
      emit(CarouselPageChanged(event.pageIndex));
    });
  }

  void changePage(int pageIndex) {
    add(PageChanged(pageIndex));
  }
}
