import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

import '../../repositories/pump/mock/pump_repository.mocks.dart';

void main() {
  late PumpRepository pumpRepository;

  const int pumpID = 1;
  const bool isActive = true;

  setUp(() {
    pumpRepository = MockPumpRepository();
  });

  group('Test PumpBloc call event', () {
    blocTest<PumpBloc, PumpState>(
      'Initial value in bloc',
      build: () => PumpBloc(pumpRepository: pumpRepository),
      expect: () => [],
    );

    blocTest<PumpBloc, PumpState>(
      'Get correct value after call PumpWorked event',
      build: () => PumpBloc(pumpRepository: pumpRepository),
      act: (bloc) => bloc.add(PumpWorked(pumpID: pumpID, isActive: isActive)),
      expect: () => [const PumpWorkingSuccess(pumpID, isActive)],
    );
  });
}
