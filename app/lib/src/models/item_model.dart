import 'package:json_annotation/json_annotation.dart';

part 'item_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class ItemModel {
  String? nome;

  ItemModel({
    this.nome,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
}
