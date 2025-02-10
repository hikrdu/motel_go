import 'package:json_annotation/json_annotation.dart';

part 'discount_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class DiscountModel {
  double? desconto;

  DiscountModel({
    this.desconto,
  });

  factory DiscountModel.fromJson(Map<String, dynamic> json) => _$DiscountModelFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountModelToJson(this);
}
