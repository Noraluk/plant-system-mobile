part of 'pump_bloc.dart';

@immutable
abstract class PumpEvent extends Equatable {
  const PumpEvent({
    required this.id,
    this.pumpActivatedRequestModel,
  });

  final int id;
  final PumpActivatedRequestModel? pumpActivatedRequestModel;
}

class PumpManualActivatedEvent extends PumpEvent {
  const PumpManualActivatedEvent(
    int id,
    PumpActivatedRequestModel pumpActivatedRequestModel,
  ) : super(
          id: id,
          pumpActivatedRequestModel: pumpActivatedRequestModel,
        );

  @override
  List<Object?> get props => [
        id,
        pumpActivatedRequestModel,
      ];
}

class PumpCountdownActivatedEvent extends PumpEvent {
  const PumpCountdownActivatedEvent(
    int id,
    PumpActivatedRequestModel pumpActivatedRequestModel, {
    this.second,
  }) : super(
          id: id,
          pumpActivatedRequestModel: pumpActivatedRequestModel,
        );

  final int? second;

  @override
  List<Object?> get props => [
        id,
        pumpActivatedRequestModel,
        second,
      ];
}

class PumpManualLoadedEvent extends PumpEvent {
  const PumpManualLoadedEvent(int id) : super(id: id);

  @override
  List<Object?> get props => [id];
}

class PumpCountdownLoadedEvent extends PumpEvent {
  const PumpCountdownLoadedEvent(int id) : super(id: id);

  @override
  List<Object?> get props => [id];
}
