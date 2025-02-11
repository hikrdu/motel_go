import 'package:flutter_test/flutter_test.dart';
import 'package:go_now/src/logic/logic.dart';

import '../../../util_test.dart';

void main() {
  group('CarouselBloc', () {
    initializeUtilTest();
    late CarouselBloc carouselBloc;

    setUp(() {
      carouselBloc = CarouselBloc();
    });

    test('initial state is CarouselInitial', () {
      expect(carouselBloc.state, CarouselInitial());
    });

    test('emits CarouselPageChanged when PageChanged is added', () {
      carouselBloc.add(PageChanged(1));
      expectLater(
        carouselBloc.stream,
        emitsInOrder([CarouselPageChanged(1)]),
      );
    });

    test('changePage adds PageChanged event', () {
      carouselBloc.changePage(1);
      expectLater(
        carouselBloc.stream,
        emitsInOrder([CarouselPageChanged(1)]),
      );
    });
  });
}
