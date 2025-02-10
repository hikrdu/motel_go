import 'package:app/app.dart';
import 'package:json_annotation/json_annotation.dart';

part 'suite_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class SuiteModel {
  String? nome;

  int? qtd;

  bool? exibirQtdDisponiveis;

  List<String>? fotos;

  List<ItemModel>? itens;

  List<CategoryItemModel>? categoriaItens;

  List<PeriodModel>? periodos;

  SuiteModel({
    this.nome,
    this.qtd,
    this.exibirQtdDisponiveis,
    this.fotos,
    this.itens,
    this.categoriaItens,
    this.periodos,
  });

  factory SuiteModel.fromJson(Map<String, dynamic> json) => _$SuiteModelFromJson(json);

  Map<String, dynamic> toJson() => _$SuiteModelToJson(this);
}
