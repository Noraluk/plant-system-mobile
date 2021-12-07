import 'package:freezed_annotation/freezed_annotation.dart';

part 'pump_activated_response_model.freezed.dart';
part 'pump_activated_response_model.g.dart';

@freezed
abstract class PumpActivatedResponseModel with _$PumpActivatedResponseModel {
  const factory PumpActivatedResponseModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _PumpActivatedResponseModel;

  factory PumpActivatedResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PumpActivatedResponseModelFromJson(json);
}
