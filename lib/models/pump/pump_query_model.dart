class PumpQueryModel {
  const PumpQueryModel({required this.isActive});

  final bool isActive;

  Map<String, String> toJson() => {
        'isActive': isActive.toString(),
      };
}
