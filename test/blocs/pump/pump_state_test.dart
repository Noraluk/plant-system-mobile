import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';

void main() {
  const int id = 1;
  const bool isActive = true;
  const bool isWorking = true;
  const bool isAsk = true;

  group('Test PumpState', () {
    group('Test PumpInitial', () {
      test('Get initial value', () {
        PumpInitial state = PumpInitial();
        List<Object?> expected = [null, null, null, null];

        expect(state.props, expected);
      });
    });

    group('Test PumpLoadingState', () {
      test('Get initial value', () {
        PumpLoadingState state = PumpLoadingState();
        List<Object?> expected = [null, null, null, null];

        expect(state.props, expected);
      });
    });

    group('Test PumpLoadedState', () {
      test('Get initial value', () {
        PumpLoadedState state = const PumpLoadedState(
          id: id,
          isActive: isActive,
          isWorking: isWorking,
          isAsk: isAsk,
        );
        List<Object?> expected = [id, isActive, isWorking, isAsk];

        expect(state.props, expected);
      });
    });
  });
}
