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

class PumpInitial extends PumpState {
  @override
  List<Object?> get props => [];
}

class PumpLoading extends PumpState {
  @override
  List<Object?> get props => [];
}

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
