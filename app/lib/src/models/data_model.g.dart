// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map json) => DataModel(
      pagina: (json['pagina'] as num?)?.toInt(),
      qtdPorPagina: (json['qtdPorPagina'] as num?)?.toInt(),
      totalSuites: (json['totalSuites'] as num?)?.toInt(),
      totalMoteis: (json['totalMoteis'] as num?)?.toInt(),
      raio: (json['raio'] as num?)?.toInt(),
      maxPaginas: (json['maxPaginas'] as num?)?.toInt(),
      moteis: (json['moteis'] as List<dynamic>?)
          ?.map((e) => MotelModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      if (instance.pagina case final value?) 'pagina': value,
      if (instance.qtdPorPagina case final value?) 'qtdPorPagina': value,
      if (instance.totalSuites case final value?) 'totalSuites': value,
      if (instance.totalMoteis case final value?) 'totalMoteis': value,
      if (instance.raio case final value?) 'raio': value,
      if (instance.maxPaginas case final value?) 'maxPaginas': value,
      if (instance.moteis case final value?) 'moteis': value,
    };
