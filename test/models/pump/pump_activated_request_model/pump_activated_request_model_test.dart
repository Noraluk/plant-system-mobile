import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';

void main() {
  group('Test PumpActivatedRequestModel', () {
    test('Convert json to PumpActivatedRequestModel', () {
      const bool isActive = true;
      const Map<String, dynamic> json = {'is_active': isActive};

      const PumpActivatedRequestModel expected =
          PumpActivatedRequestModel(isActive: isActive);

      expect(PumpActivatedRequestModel.fromJson(json), expected);
    });

    test('Convert PumpActivatedRequestModel to json', () {
      const bool isActive = true;

      const PumpActivatedRequestModel pumpActivatedRequestModel =
          PumpActivatedRequestModel(isActive: isActive);

      const Map<String, dynamic> expected = {'is_active': isActive};

      expect(pumpActivatedRequestModel.toJson(), expected);
    });
  });
}
