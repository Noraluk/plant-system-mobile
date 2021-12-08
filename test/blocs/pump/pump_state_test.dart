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
        List<Object?> expected = [];

        expect(state.props, expected);
      });
    });

    group('Test PumpLoading', () {
      test('Get initial value', () {
        PumpLoading state = PumpLoading();
        List<Object?> expected = [];

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
