import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SuiteModel', () {
    test('fromJson', () {
      final json = {
        'nome': 'Test Suite',
        'qtd': 10,
        'exibirQtdDisponiveis': true,
        'fotos': ['foto1', 'foto2'],
        'itens': [
          {'nome': 'Item 1', 'descricao': 'Descricao 1'},
          {'nome': 'Item 2', 'descricao': 'Descricao 2'}
        ],
        'categoriaItens': [
          {'nome': 'Categoria 1', 'descricao': 'Descricao 1'},
          {'nome': 'Categoria 2', 'descricao': 'Descricao 2'}
        ],
        'periodos': [
          {'inicio': '2022-01-01', 'fim': '2022-01-31'},
          {'inicio': '2022-02-01', 'fim': '2022-02-28'}
        ]
      };

      final suiteModel = SuiteModel.fromJson(json);

      expect(suiteModel.nome, 'Test Suite');
      expect(suiteModel.qtd, 10);
      expect(suiteModel.exibirQtdDisponiveis, true);
      expect(suiteModel.fotos, ['foto1', 'foto2']);
      expect(suiteModel.itens, isNotNull);
      expect(suiteModel.categoriaItens, isNotNull);
      expect(suiteModel.periodos, isNotNull);
    });

    test('toJson', () {
      final suiteModel = SuiteModel(nome: 'Test Suite', qtd: 10, exibirQtdDisponiveis: true, fotos: [
        'foto1',
        'foto2'
      ], itens: [
        ItemModel(nome: 'Item 1'),
        ItemModel(nome: 'Item 2')
      ], categoriaItens: [
        CategoryItemModel(nome: 'Categoria 1', icone: 'Icone 1'),
        CategoryItemModel(nome: 'Categoria 2', icone: 'Icone 2')
      ], periodos: [
        PeriodModel(valor: 80.25, valorTotal: 100.99),
        PeriodModel(valor: 90.55)
      ]);

      final json = suiteModel.toJson();

      expect(json['nome'], 'Test Suite');
      expect(json['qtd'], 10);
      expect(json['exibirQtdDisponiveis'], true);
      expect(json['fotos'], ['foto1', 'foto2']);
      expect(json['itens'], isNotNull);
      expect(json['categoriaItens'], isNotNull);
      expect(json['periodos'], isNotNull);
    });
  });
}
