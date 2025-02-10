// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuiteModel _$SuiteModelFromJson(Map json) => SuiteModel(
      nome: json['nome'] as String?,
      qtd: (json['qtd'] as num?)?.toInt(),
      exibirQtdDisponiveis: json['exibirQtdDisponiveis'] as bool?,
      fotos:
          (json['fotos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      itens: (json['itens'] as List<dynamic>?)
          ?.map((e) => ItemModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      categoriaItens: (json['categoriaItens'] as List<dynamic>?)
          ?.map((e) =>
              CategoryItemModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      periodos: (json['periodos'] as List<dynamic>?)
          ?.map(
              (e) => PeriodModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$SuiteModelToJson(SuiteModel instance) =>
    <String, dynamic>{
      if (instance.nome case final value?) 'nome': value,
      if (instance.qtd case final value?) 'qtd': value,
      if (instance.exibirQtdDisponiveis case final value?)
        'exibirQtdDisponiveis': value,
      if (instance.fotos case final value?) 'fotos': value,
      if (instance.itens case final value?) 'itens': value,
      if (instance.categoriaItens case final value?) 'categoriaItens': value,
      if (instance.periodos case final value?) 'periodos': value,
    };
