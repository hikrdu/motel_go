import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils_test.dart';

void main() {
  initializeUtilTest();
  group('DataModel', () {
    test('fromJson', () {
      final json = {
        'pagina': 1,
        'qtdPorPagina': 10,
        'totalSuites': 100,
        'totalMoteis': 50,
        'raio': 5,
        'maxPaginas': 10,
        'moteis': [
          {'id': 1, 'name': 'Motel 1'},
          {'id': 2, 'name': 'Motel 2'},
        ],
      };

      final dataModel = DataModel.fromJson(json);

      expect(dataModel.pagina, 1);
      expect(dataModel.qtdPorPagina, 10);
      expect(dataModel.totalSuites, 100);
      expect(dataModel.totalMoteis, 50);
      expect(dataModel.raio, 5);
      expect(dataModel.maxPaginas, 10);
      expect(dataModel.moteis, isNotNull);
      expect(dataModel.moteis!.length, 2);
    });

    test('toJson', () {
      final dataModel = DataModel(
        pagina: 1,
        qtdPorPagina: 10,
        totalSuites: 100,
        totalMoteis: 50,
        raio: 5,
        maxPaginas: 10,
        moteis: [
          MotelModel(fantasia: 'Motel 1', media: 4.5),
          MotelModel(fantasia: 'Motel 2', media: 4.8),
        ],
      );

      final json = dataModel.toJson();

      expect(json['pagina'], 1);
      expect(json['qtdPorPagina'], 10);
      expect(json['totalSuites'], 100);
      expect(json['totalMoteis'], 50);
      expect(json['raio'], 5);
      expect(json['maxPaginas'], 10);
      expect(json['moteis'], isNotNull);
      expect(json['moteis'].length, 2);
    });
  });
}
