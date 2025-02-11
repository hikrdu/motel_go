import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PeriodModel', () {
    test('fromJson', () {
      final json = {
        'tempoFormatado': '10:00',
        'tempo': '10',
        'valor': 10.0,
        'valorTotal': 100.0,
        'temCortesia': true,
        'desconto': {
          // Add DiscountModel json here
        },
      };

      final periodModel = PeriodModel.fromJson(json);

      expect(periodModel.tempoFormatado, '10:00');
      expect(periodModel.tempo, '10');
      expect(periodModel.valor, 10.0);
      expect(periodModel.valorTotal, 100.0);
      expect(periodModel.temCortesia, true);
      expect(periodModel.desconto, isNotNull);
    });

    test('toJson', () {
      final periodModel = PeriodModel(
        tempoFormatado: '10:00',
        tempo: '10',
        valor: 10.0,
        valorTotal: 100.0,
        temCortesia: true,
        desconto: DiscountModel(), // Add DiscountModel here
      );

      final json = periodModel.toJson();

      expect(json['tempoFormatado'], '10:00');
      expect(json['tempo'], '10');
      expect(json['valor'], 10.0);
      expect(json['valorTotal'], 100.0);
      expect(json['temCortesia'], true);
      expect(json['desconto'], isNotNull);
    });
  });
}
