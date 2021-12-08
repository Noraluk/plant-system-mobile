import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/models/pump/pump_model/pump_model.dart';

void main() {
  group('Test PumpModel', () {
    test('Convert PumpModel to json', () {
      const int id = 1;
      const bool isActive = true;
      const bool isAsk = true;
      const bool isWorking = true;
      PumpModel response = const PumpModel(
        id: id,
        isActive: isActive,
        isAsk: isAsk,
        isWorking: isWorking,
      );

      Map<String, dynamic> expected = {
        'id': id,
        'is_active': isActive,
        'is_ask': isAsk,
        'is_working': isWorking
      };
      expect(response.toJson(), expected);
    });

    test('Convert json to PumpModel', () {
      const int id = 1;
      const bool isActive = true;
      const bool isAsk = true;
      const bool isWorking = true;
      Map<String, dynamic> json = {
        'id': id,
        'is_active': isActive,
        'is_ask': isAsk,
        'is_working': isWorking
      };

      PumpModel expected = const PumpModel(
        id: id,
        isActive: isActive,
        isAsk: isAsk,
        isWorking: isWorking,
      );

      expect(PumpModel.fromJson(json), expected);
    });
  });
}
