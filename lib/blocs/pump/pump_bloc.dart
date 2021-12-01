import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:plant_system_mobile/models/pump/pump_query_model.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

part 'pump_event.dart';
part 'pump_state.dart';

class PumpBloc extends Bloc<PumpEvent, PumpState> {
  final PumpRepository pumpRepository;

  PumpBloc({required this.pumpRepository}) : super(PumpInitial()) {
    on<PumpWorked>((event, emit) async {
      PumpQueryModel query = PumpQueryModel(isActive: event.isActive);
      await pumpRepository.getPump(pumpID: event.pumpID, query: query);

      emit(PumpWorkingSuccess(event.pumpID, event.isActive));
    });
  }
}
