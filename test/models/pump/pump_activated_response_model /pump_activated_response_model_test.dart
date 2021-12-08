import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_response_model/pump_activated_response_model.dart';

void main() {
  group('Test PumpActivatedResponseModel', () {
    test('Convert json to PumpActivatedResponseModel', () {
      const int id = 1;
      const bool isActive = true;
      const Map<String, dynamic> json = {'id': id, 'is_active': isActive};

      const PumpActivatedResponseModel expected =
          PumpActivatedResponseModel(id: id, isActive: isActive);

      expect(PumpActivatedResponseModel.fromJson(json), expected);
    });

    test('Convert PumpActivatedResponseModel to json', () {
      const int id = 1;
      const bool isActive = true;

      const PumpActivatedResponseModel pumpActivatedResponseModel =
          PumpActivatedResponseModel(id: id, isActive: isActive);

      const Map<String, dynamic> expected = {'id': id, 'is_active': isActive};

      expect(pumpActivatedResponseModel.toJson(), expected);
    });
  });
}
