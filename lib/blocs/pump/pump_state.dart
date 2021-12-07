part of 'pump_bloc.dart';

@immutable
abstract class PumpState extends Equatable {}

class PumpInitial extends PumpState {
  @override
  List<Object?> get props => [];
}

class PumpLoading extends PumpState {
  @override
  List<Object?> get props => [];
}

class PumpLoadedState extends PumpState {
  PumpLoadedState({
    required this.id,
    this.isActive,
    this.isWorking,
    this.isAsk,
  });

  final int id;
  final bool? isActive;
  final bool? isWorking;
  final bool? isAsk;

  @override
  List<Object?> get props => [id, isActive, isWorking, isAsk];
}
