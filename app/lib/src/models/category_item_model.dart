import 'package:json_annotation/json_annotation.dart';

part 'category_item_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class CategoryItemModel {
  String? nome;

  String? icone;

  CategoryItemModel({
    this.nome,
    this.icone,
  });

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) => _$CategoryItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryItemModelToJson(this);
}
