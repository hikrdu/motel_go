import 'package:app/app.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class BaseModel {
  bool? sucesso;

  DataModel? data;

  List<dynamic>? mensagem;

  BaseModel({
    this.sucesso,
    this.data,
    this.mensagem,
  });

  factory BaseModel.fromJson(Map<String, dynamic> json) => _$BaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$BaseModelToJson(this);
}
