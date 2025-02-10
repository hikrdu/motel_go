import 'package:feature_module_base/feature_module_base.dart';

abstract class CarouselState extends Equatable {
  const CarouselState();

  @override
  List<Object> get props => [];
}

class CarouselInitial extends CarouselState {}

class CarouselPageChanged extends CarouselState {
  final int pageIndex;

  const CarouselPageChanged(this.pageIndex);

  @override
  List<Object> get props => [pageIndex];
}
