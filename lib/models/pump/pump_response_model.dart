class PumpResponseModel {
  PumpResponseModel({
    this.pumpId,
    this.isActive,
  });

  final int? pumpId;
  final bool? isActive;

  factory PumpResponseModel.fromJson(Map<String, dynamic> json) =>
      PumpResponseModel(
        pumpId: json["pump_id"],
        isActive: json["is_active"],
      );

  Map<String, dynamic> toJson() => {
        "pump_id": pumpId,
        "is_active": isActive,
      };
}
