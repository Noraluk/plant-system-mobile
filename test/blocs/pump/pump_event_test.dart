import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';

void main() {
  const int pumpID = 1;
  const bool isActive = true;

  group('Test PumpEvent', () {
    group('Test PumpWorked', () {
      test('Get initial props value when call event', () {
        PumpWorked event = PumpWorked(pumpID: pumpID, isActive: isActive);
        List<Object> expected = [pumpID, isActive];

        expect(event.props, expected);
      });
    });
  });
}
