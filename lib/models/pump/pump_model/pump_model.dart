import 'package:freezed_annotation/freezed_annotation.dart';

part 'pump_model.freezed.dart';
part 'pump_model.g.dart';

@freezed
abstract class PumpModel with _$PumpModel {
  const factory PumpModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_working') required bool isWorking,
    @JsonKey(name: 'is_ask') required bool isAsk,
  }) = _PumpModel;

  factory PumpModel.fromJson(Map<String, dynamic> json) =>
      _$PumpModelFromJson(json);
}
