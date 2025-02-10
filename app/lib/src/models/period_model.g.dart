// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeriodModel _$PeriodModelFromJson(Map json) => PeriodModel(
      tempoFormatado: json['tempoFormatado'] as String?,
      tempo: json['tempo'] as String?,
      valor: (json['valor'] as num?)?.toDouble(),
      valorTotal: (json['valorTotal'] as num?)?.toDouble(),
      temCortesia: json['temCortesia'] as bool?,
      desconto: json['desconto'] == null
          ? null
          : DiscountModel.fromJson(
              Map<String, dynamic>.from(json['desconto'] as Map)),
    );

Map<String, dynamic> _$PeriodModelToJson(PeriodModel instance) =>
    <String, dynamic>{
      if (instance.tempoFormatado case final value?) 'tempoFormatado': value,
      if (instance.tempo case final value?) 'tempo': value,
      if (instance.valor case final value?) 'valor': value,
      if (instance.valorTotal case final value?) 'valorTotal': value,
      if (instance.temCortesia case final value?) 'temCortesia': value,
      if (instance.desconto case final value?) 'desconto': value,
    };
