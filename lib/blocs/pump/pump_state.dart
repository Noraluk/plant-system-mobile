part of 'pump_bloc.dart';

abstract class PumpState extends Equatable {
  const PumpState({
    this.id,
    this.isActive,
    this.isWorking,
    this.isAsk,
  });

  final int? id;
  final bool? isActive;
  final bool? isWorking;
  final bool? isAsk;

  @override
  List<Object?> get props => [id, isActive, isWorking, isAsk];
}

class PumpInitial extends PumpState {}

class PumpLoadingState extends PumpState {}

class PumpLoadedState extends PumpState {
  const PumpLoadedState({
    required int id,
    bool? isActive,
    bool? isWorking,
    bool? isAsk,
  }) : super(
          id: id,
          isActive: isActive,
          isWorking: isWorking,
          isAsk: isAsk,
        );
}

class PumpCountdownLoadedState extends PumpLoadedState {
  const PumpCountdownLoadedState({
    required int id,
    bool? isActive,
    bool? isWorking,
    bool? isAsk,
    this.second,
  }) : super(
          id: id,
          isActive: isActive,
          isWorking: isWorking,
          isAsk: isAsk,
        );

  final int? second;

  @override
  List<Object?> get props => [id, isActive, isWorking, isAsk, second];
}

class PumpManualLoadedState extends PumpLoadedState {
  const PumpManualLoadedState({
    required int id,
    bool? isActive,
    bool? isWorking,
    bool? isAsk,
  }) : super(
          id: id,
          isActive: isActive,
          isWorking: isWorking,
          isAsk: isAsk,
        );
}

class PumpErrorState extends PumpState {}
