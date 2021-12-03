import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/models/pump/pump_response_model.dart';

void main() {
  group('Test PumpResponseModel', () {
    test('Convert to json', () {
      const int pumpID = 1;
      const bool isActive = true;
      PumpResponseModel response = PumpResponseModel(
        pumpId: pumpID,
        isActive: isActive,
      );

      Map<String, dynamic> expected = {
        'pump_id': pumpID,
        'is_active': isActive
      };
      expect(response.toJson(), expected);
    });
  });
}
