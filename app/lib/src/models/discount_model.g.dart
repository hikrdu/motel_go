// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountModel _$DiscountModelFromJson(Map json) => DiscountModel(
      desconto: (json['desconto'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DiscountModelToJson(DiscountModel instance) =>
    <String, dynamic>{
      if (instance.desconto case final value?) 'desconto': value,
    };
