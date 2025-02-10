import 'package:app/app.dart';
import 'package:json_annotation/json_annotation.dart';

part 'period_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class PeriodModel {
  String? tempoFormatado;

  String? tempo;

  double? valor;

  double? valorTotal;

  bool? temCortesia;

  DiscountModel? desconto;

  PeriodModel({
    this.tempoFormatado,
    this.tempo,
    this.valor,
    this.valorTotal,
    this.temCortesia,
    this.desconto,
  });

  factory PeriodModel.fromJson(Map<String, dynamic> json) => _$PeriodModelFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodModelToJson(this);
}
