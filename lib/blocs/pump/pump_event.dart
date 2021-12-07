part of 'pump_bloc.dart';

@immutable
abstract class PumpEvent extends Equatable {}

class PumpActivatedEvent extends PumpEvent {
  PumpActivatedEvent({
    required this.id,
    required this.pumpActivatedRequestModel,
  });

  final int id;
  final PumpActivatedRequestModel pumpActivatedRequestModel;

  @override
  List<Object> get props => [
        id,
        pumpActivatedRequestModel,
      ];
}

class PumpLoadedEvent extends PumpEvent {
  PumpLoadedEvent({required this.id});

  final int id;

  @override
  List<Object?> get props => [id];
}
