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
    on<PumpManualActivatedEvent>(_onManualActivate);
    on<PumpCountdownActivatedEvent>(_onCountdownActivate);
    on<PumpManualLoadedEvent>(_onGetManualPump);
    on<PumpCountdownLoadedEvent>(_onGetCountdownPump);
  }

  _onManualActivate(PumpManualActivatedEvent event, Emitter emit) async {
    try {
      emit(PumpLoadingState());

      PumpState state = await _onActivate(event, emit);
      emit(PumpManualLoadedState(
        id: state.id!,
        isActive: state.isActive,
      ));
    } on PumpErrorState catch (_) {
      emit(ManualPumpErrorState());
    }
  }

  _onCountdownActivate(PumpCountdownActivatedEvent event, Emitter emit) async {
    try {
      emit(PumpLoadingState());

      PumpState state = await _onActivate(event, emit);
      emit(PumpCountdownLoadedState(
        id: event.id,
        isActive: state.isActive,
        second: event.second,
      ));
    } on PumpErrorState catch (_) {
      emit(CountdownPumpErrorState());
    }
  }

  Future<PumpState> _onActivate(PumpEvent event, Emitter emit) async {
    try {
      PumpActivatedResponseModel pumpActivatedResponseModel =
          await pumpRepository.activePump(
        id: event.id,
        body: event.pumpActivatedRequestModel!,
      );

      return PumpLoadedState(
        id: pumpActivatedResponseModel.id,
        isActive: pumpActivatedResponseModel.isActive,
      );
    } catch (_) {
      throw PumpErrorState();
    }
  }

  _onGetManualPump(PumpManualLoadedEvent event, Emitter emit) async {
    try {
      emit(PumpLoadingState());

      PumpState state = await _onGetPump(event, emit);
      emit(PumpManualLoadedState(
        id: state.id!,
        isActive: state.isActive,
        isWorking: state.isWorking,
        isAsk: state.isAsk,
      ));
    } on PumpState catch (_) {
      emit(ManualPumpErrorState());
    }
  }

  _onGetCountdownPump(PumpCountdownLoadedEvent event, Emitter emit) async {
    try {
      emit(PumpLoadingState());

      PumpState state = await _onGetPump(event, emit);
      emit(PumpCountdownLoadedState(
        id: state.id!,
        isActive: state.isActive,
        isWorking: state.isWorking,
        isAsk: state.isAsk,
        second: 0,
      ));
    } on PumpState catch (_) {
      emit(CountdownPumpErrorState());
    }
  }

  Future<PumpState> _onGetPump(PumpEvent event, Emitter emit) async {
    try {
      PumpModel pump = await pumpRepository.getPump(id: event.id);
      return PumpLoadedState(
        id: pump.id,
        isActive: pump.isActive,
        isWorking: pump.isWorking,
        isAsk: pump.isAsk,
      );
    } catch (_) {
      throw PumpErrorState();
    }
  }
}
