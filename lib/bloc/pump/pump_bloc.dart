import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'pump_event.dart';
part 'pump_state.dart';

class PumpBloc extends Bloc<PumpEvent, PumpState> {
  PumpBloc() : super(PumpInitial()) {
    on<PumpWorked>((event, emit) => emit(
          PumpWorkingSuccess(event.pumpID, event.isActive),
        ));
  }
}
