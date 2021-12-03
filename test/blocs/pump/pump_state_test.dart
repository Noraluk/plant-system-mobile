import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';

void main() {
  const int pumpID = 1;
  const bool isActive = true;

  group('Test PumpState', () {
    group('Test PumpInitial', () {
      test('Get initial value', () {
        PumpInitial state = PumpInitial();
        List<Object?> expected = [];

        expect(state.props, expected);
      });
    });

    group('Test PumpWorkingSuccess', () {
      test('Get initial value', () {
        PumpWorkingSuccess state = const PumpWorkingSuccess(pumpID, isActive);
        List<Object?> expected = [pumpID, isActive];

        expect(state.props, expected);
      });
    });
  });
}
