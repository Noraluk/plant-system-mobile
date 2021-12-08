import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plant_system_mobile/constants/pump/pump_api_path.dart';
import 'package:plant_system_mobile/extensions/string_extension.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_response_model/pump_activated_response_model.dart';
import 'package:plant_system_mobile/models/pump/pump_model/pump_model.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late Dio dio;

  setUp(() {
    dio = MockDio();
  });

  group('Test PumpRepository', () {
    group('Test activePump', () {
      test('Update new pump status', () async {
        const int id = 1;
        const bool isActive = true;
        const Map<String, dynamic> data = {'id': id, 'is_active': isActive};
        const PumpActivatedRequestModel body =
            PumpActivatedRequestModel(isActive: isActive);

        String path = PumpApiPath.activePump.path.setPathWithParams([id]);

        when(() => dio.patch(
              path,
              data: body.toJson(),
            )).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: path),
              data: data,
              statusCode: 200,
            ));

        PumpRepository pumpRepository = PumpRepository(dio);
        PumpActivatedResponseModel response =
            await pumpRepository.activePump(id: id, body: body);

        expect(response.id, id);
        expect(response.isActive, isActive);
      });

      test(' Get bad request from server', () async {
        const int id = 1;
        const bool isActive = true;
        const PumpActivatedRequestModel body =
            PumpActivatedRequestModel(isActive: isActive);

        String path = PumpApiPath.activePump.path.setPathWithParams([id]);

        when(() => dio.patch(
              path,
              data: body.toJson(),
            )).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: path),
              data: 'error',
              statusCode: 400,
            ));

        PumpRepository pumpRepository = PumpRepository(dio);

        expect(
          pumpRepository.activePump(
            id: id,
            body: body,
          ),
          throwsException,
        );
      });
    });

    group('Test getPump', () {
      test('Get correct pump', () async {
        const int id = 1;
        Map<String, dynamic> data = const PumpModel(
          id: id,
          isActive: false,
          isWorking: false,
          isAsk: false,
        ).toJson();

        String path = PumpApiPath.getPump.path.setPathWithParams([id]);

        when(() => dio.get(
              path,
            )).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: path),
              data: data,
              statusCode: 200,
            ));

        PumpRepository pumpRepository = PumpRepository(dio);
        PumpModel response = await pumpRepository.getPump(id: id);

        expect(response.toJson(), data);
      });

      test('Get error from server', () async {
        const int id = 1;

        String path = PumpApiPath.getPump.path.setPathWithParams([id]);

        when(() => dio.get(
              path,
            )).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: path),
              data: 'error',
              statusCode: 400,
            ));

        PumpRepository pumpRepository = PumpRepository(dio);

        expect(pumpRepository.getPump(id: id), throwsException);
      });
    });
  });
}
