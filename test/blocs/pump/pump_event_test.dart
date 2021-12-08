import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';

void main() {
  const int id = 1;
  const bool isActive = true;

  group('Test PumpEvent', () {
    group('Test PumpActivatedEvent', () {
      test('Get initial props value when call event', () {
        const PumpActivatedRequestModel pumpActivatedRequestModel =
            PumpActivatedRequestModel(isActive: isActive);

        PumpActivatedEvent event = PumpActivatedEvent(
            id: id, pumpActivatedRequestModel: pumpActivatedRequestModel);
        List<Object> expected = [id, pumpActivatedRequestModel];

        expect(event.props, expected);
      });
    });

    group('Test PumpLoadedEvent', () {
      test('Get initial props value when call event', () {
        PumpLoadedEvent event = PumpLoadedEvent(id: id);
        List<Object> expected = [id];

        expect(event.props, expected);
      });
    });
  });
}
