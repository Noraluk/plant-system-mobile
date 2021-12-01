part of 'pump_bloc.dart';

@immutable
abstract class PumpState extends Equatable {
  const PumpState({
    this.pumpID,
    this.isActive = false,
  });

  final int? pumpID;
  final bool isActive;
}

class PumpInitial extends PumpState {
  @override
  List<Object?> get props => [];
}

class PumpWorkingSuccess extends PumpState {
  const PumpWorkingSuccess(int pumpID, bool isActive)
      : super(
          pumpID: pumpID,
          isActive: isActive,
        );

  @override
  List<Object?> get props => [pumpID, isActive];
}
