import 'package:freezed_annotation/freezed_annotation.dart';

part 'pump_activated_request_model.freezed.dart';
part 'pump_activated_request_model.g.dart';

@freezed
abstract class PumpActivatedRequestModel with _$PumpActivatedRequestModel {
  const factory PumpActivatedRequestModel({
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _PumpActivatedRequestModel;

  factory PumpActivatedRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PumpActivatedRequestModelFromJson(json);
}
