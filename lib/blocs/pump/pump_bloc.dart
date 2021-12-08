import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_response_model/pump_activated_response_model.dart';
import 'package:plant_system_mobile/models/pump/pump_model/pump_model.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

part 'pump_event.dart';
part 'pump_state.dart';

class PumpBloc extends Bloc<PumpEvent, PumpState> {
  final PumpRepository pumpRepository;

  PumpBloc({required this.pumpRepository}) : super(PumpInitial()) {
    on<PumpActivatedEvent>((event, emit) async {
      emit(PumpLoading());

      PumpActivatedResponseModel pumpActivatedResponseModel =
          await pumpRepository.activePump(
        id: event.id,
        body: event.pumpActivatedRequestModel,
      );

      emit(PumpLoadedState(
        id: pumpActivatedResponseModel.id,
        isActive: pumpActivatedResponseModel.isActive,
      ));
    });

    on<PumpLoadedEvent>((event, emit) async {
      emit(PumpLoading());

      PumpModel pump = await pumpRepository.getPump(id: event.id);

      emit(PumpLoadedState(
        id: pump.id,
        isActive: pump.isActive,
        isWorking: pump.isWorking,
        isAsk: pump.isAsk,
      ));
    });
  }
}
