import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:plant_system_mobile/constants/pump/pump_api_path.dart';
import 'package:plant_system_mobile/extensions/string_extension.dart';
import 'package:plant_system_mobile/models/pump/pump_query_model.dart';
import 'package:plant_system_mobile/models/pump/pump_response_model.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

import '../../mock/dio.mocks.dart';

void main() {
  late Dio dio;

  setUp(() {
    dio = MockDio();
  });

  group('Test PumpRepository', () {
    group('Test getPump', () {
      test('Update new pump status', () async {
        const int pumpID = 1;
        const bool isActive = true;
        const Map<String, dynamic> data = {
          'pump_id': pumpID,
          'is_active': isActive
        };
        const PumpQueryModel query = PumpQueryModel(isActive: isActive);

        String path = PumpApiPath.getPump.path.setPathWithParams([pumpID]);

        when(dio.get(
          path,
          queryParameters: query.toJson(),
        )).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: path),
              data: data,
              statusCode: 200,
            ));

        PumpRepository pumpRepository = PumpRepository(dio);
        PumpResponseModel response = await pumpRepository.getPump(
            pumpID: pumpID, query: const PumpQueryModel(isActive: isActive));

        expect(response.pumpId, pumpID);
        expect(response.isActive, isActive);
      });

      test(' Get bad request from server', () async {
        const int pumpID = 1;
        const bool isActive = true;
        const PumpQueryModel query = PumpQueryModel(isActive: isActive);

        String path = PumpApiPath.getPump.path.setPathWithParams([pumpID]);

        when(dio.get(
          path,
          queryParameters: query.toJson(),
        )).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: path),
              data: 'error',
              statusCode: 400,
            ));

        PumpRepository pumpRepository = PumpRepository(dio);

        expect(
          pumpRepository.getPump(
            pumpID: pumpID,
            query: const PumpQueryModel(isActive: isActive),
          ),
          throwsException,
        );
      });
    });
  });
}
