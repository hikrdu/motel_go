// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModel _$BaseModelFromJson(Map json) => BaseModel(
      sucesso: json['sucesso'] as bool?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(Map<String, dynamic>.from(json['data'] as Map)),
      mensagem: json['mensagem'] as List<dynamic>?,
    );

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
      if (instance.sucesso case final value?) 'sucesso': value,
      if (instance.data case final value?) 'data': value,
      if (instance.mensagem case final value?) 'mensagem': value,
    };
