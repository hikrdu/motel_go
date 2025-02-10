import 'package:app/app.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class DataModel {
  int? pagina;

  int? qtdPorPagina;

  int? totalSuites;

  int? totalMoteis;

  int? raio;

  int? maxPaginas;

  List<MotelModel>? moteis;

  DataModel({
    this.pagina,
    this.qtdPorPagina,
    this.totalSuites,
    this.totalMoteis,
    this.raio,
    this.maxPaginas,
    this.moteis,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
