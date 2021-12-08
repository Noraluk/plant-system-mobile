import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_response_model/pump_activated_response_model.dart';
import 'package:plant_system_mobile/models/pump/pump_model/pump_model.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

class MockPumpRepository extends Mock implements PumpRepository {}

void main() {
  late PumpRepository pumpRepository;

  const int id = 1;
  const bool isActive = true;
  const PumpActivatedRequestModel pumpActivatedRequestModel =
      PumpActivatedRequestModel(isActive: isActive);

  setUp(() {
    pumpRepository = MockPumpRepository();
  });

  group('Test PumpBloc call event', () {
    group('Test PumpInitial', () {
      blocTest<PumpBloc, PumpState>(
        'Initial value in bloc',
        build: () => PumpBloc(pumpRepository: pumpRepository),
        expect: () => [],
      );
    });

    group('Test PumpActivatedEvent', () {
      blocTest<PumpBloc, PumpState>(
        'Get correct value after call PumpActivatedEvent',
        setUp: () {
          when(() => pumpRepository.activePump(
                  id: id, body: pumpActivatedRequestModel))
              .thenAnswer((_) async =>
                  const PumpActivatedResponseModel(id: id, isActive: isActive));
        },
        build: () => PumpBloc(pumpRepository: pumpRepository),
        act: (bloc) => bloc.add(PumpActivatedEvent(
            id: id, pumpActivatedRequestModel: pumpActivatedRequestModel)),
        expect: () => [
          PumpLoading(),
          const PumpLoadedState(id: id, isActive: isActive),
        ],
      );
    });

    group('Test PumpLoadedEvent', () {
      const bool isActive = true;
      const bool isAsk = true;
      const bool isWorking = true;

      blocTest<PumpBloc, PumpState>(
        'Get correct value after call PumpLoaded event',
        setUp: () {
          when(() => pumpRepository.getPump(
                id: id,
              )).thenAnswer((_) async => const PumpModel(
                id: id,
                isActive: isActive,
                isAsk: isAsk,
                isWorking: isWorking,
              ));
        },
        build: () => PumpBloc(pumpRepository: pumpRepository),
        act: (bloc) => bloc.add(PumpLoadedEvent(id: id)),
        expect: () => [
          PumpLoading(),
          const PumpLoadedState(
            id: id,
            isActive: isActive,
            isAsk: isAsk,
            isWorking: isWorking,
          ),
        ],
      );

      blocTest<PumpBloc, PumpState>(
        'PumpLoaded event throw exception',
        setUp: () {
          when(() => pumpRepository.getPump(
                id: id,
              )).thenThrow(Exception());
        },
        build: () => PumpBloc(pumpRepository: pumpRepository),
        act: (bloc) => bloc.add(PumpLoadedEvent(id: id)),
      );
    });
  });
}
