import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils_test.dart';

void main() {
  initializeUtilTest();
  group('MotelModel', () {
    test('fromJson', () {
      final json = {
        'fantasia': 'Fantasia',
        'logo': 'Logo',
        'bairro': 'Bairro',
        'distancia': 10.0,
        'qtdFavoritos': 10,
        'suites': [
          {'id': 1, 'nome': 'Suite 1'},
          {'id': 2, 'nome': 'Suite 2'},
        ],
        'qtdAvaliacoes': 10,
        'media': 4.5,
      };

      final motelModel = MotelModel.fromJson(json);

      expect(motelModel.fantasia, 'Fantasia');
      expect(motelModel.logo, 'Logo');
      expect(motelModel.bairro, 'Bairro');
      expect(motelModel.distancia, 10.0);
      expect(motelModel.qtdFavoritos, 10);
      expect(motelModel.suites, isNotNull);
      expect(motelModel.qtdAvaliacoes, 10);
      expect(motelModel.media, 4.5);
    });

    test('toJson', () {
      final motelModel = MotelModel(
        fantasia: 'Fantasia',
        logo: 'Logo',
        bairro: 'Bairro',
        distancia: 10.0,
        qtdFavoritos: 10,
        suites: [
          SuiteModel(nome: 'Suite 1', qtd: 2),
          SuiteModel(nome: 'Suite 2', qtd: 3),
        ],
        qtdAvaliacoes: 10,
        media: 4.5,
      );

      final json = motelModel.toJson();

      expect(json['fantasia'], 'Fantasia');
      expect(json['logo'], 'Logo');
      expect(json['bairro'], 'Bairro');
      expect(json['distancia'], 10.0);
      expect(json['qtdFavoritos'], 10);
      expect(json['suites'], isNotNull);
      expect(json['qtdAvaliacoes'], 10);
      expect(json['media'], 4.5);
    });
  });
}
