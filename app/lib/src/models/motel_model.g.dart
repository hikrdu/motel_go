// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MotelModel _$MotelModelFromJson(Map json) => MotelModel(
      fantasia: json['fantasia'] as String?,
      logo: json['logo'] as String?,
      bairro: json['bairro'] as String?,
      distancia: (json['distancia'] as num?)?.toDouble(),
      qtdFavoritos: (json['qtdFavoritos'] as num?)?.toInt(),
      suites: (json['suites'] as List<dynamic>?)
          ?.map((e) => SuiteModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      qtdAvaliacoes: (json['qtdAvaliacoes'] as num?)?.toInt(),
      media: (json['media'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MotelModelToJson(MotelModel instance) =>
    <String, dynamic>{
      if (instance.fantasia case final value?) 'fantasia': value,
      if (instance.logo case final value?) 'logo': value,
      if (instance.bairro case final value?) 'bairro': value,
      if (instance.distancia case final value?) 'distancia': value,
      if (instance.qtdFavoritos case final value?) 'qtdFavoritos': value,
      if (instance.suites case final value?) 'suites': value,
      if (instance.qtdAvaliacoes case final value?) 'qtdAvaliacoes': value,
      if (instance.media case final value?) 'media': value,
    };
