// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryItemModel _$CategoryItemModelFromJson(Map json) => CategoryItemModel(
      nome: json['nome'] as String?,
      icone: json['icone'] as String?,
    );

Map<String, dynamic> _$CategoryItemModelToJson(CategoryItemModel instance) =>
    <String, dynamic>{
      if (instance.nome case final value?) 'nome': value,
      if (instance.icone case final value?) 'icone': value,
    };
