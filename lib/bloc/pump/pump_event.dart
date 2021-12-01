part of 'pump_bloc.dart';

@immutable
abstract class PumpEvent extends Equatable {}

class PumpWorked extends PumpEvent {
  PumpWorked({required this.pumpID, required this.isActive});

  final int pumpID;
  final bool isActive;

  @override
  List<Object> get props => [pumpID, isActive];
}
