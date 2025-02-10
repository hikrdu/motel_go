import 'package:app/app.dart';
import 'package:json_annotation/json_annotation.dart';

part 'motel_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class MotelModel {
  String? fantasia;

  String? logo;

  String? bairro;

  double? distancia;

  int? qtdFavoritos;

  List<SuiteModel>? suites;

  int? qtdAvaliacoes;

  double? media;

  MotelModel({
    this.fantasia,
    this.logo,
    this.bairro,
    this.distancia,
    this.qtdFavoritos,
    this.suites,
    this.qtdAvaliacoes,
    this.media,
  });

  factory MotelModel.fromJson(Map<String, dynamic> json) => _$MotelModelFromJson(json);

  Map<String, dynamic> toJson() => _$MotelModelToJson(this);
}
