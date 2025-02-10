import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TransitionDirectionEnum', () {
    test('TransitionDirectionEnum.rightToLeft', () {
      expect(TransitionDirectionEnum.rightToLeft.index, 0);
    });

    test('TransitionDirectionEnum.bottomToTop', () {
      expect(TransitionDirectionEnum.bottomToTop.index, 1);
    });

    test('TransitionDirectionEnum.centerZoomIn', () {
      expect(TransitionDirectionEnum.centerZoomIn.index, 2);
    });

    test('TransitionDirectionEnum length', () {
      expect(TransitionDirectionEnum.values.length, 3);
    });
  });
}
