import 'package:dio/dio.dart';
import 'package:plant_system_mobile/constants/pump/pump_api_path.dart';
import 'package:plant_system_mobile/extensions/string_extension.dart';
import 'package:plant_system_mobile/models/pump/pump_query_model.dart';
import 'package:plant_system_mobile/models/pump/pump_response_model.dart';

class PumpRepository {
  const PumpRepository(this._dio);

  final Dio _dio;

  Future<PumpResponseModel> getPump({
    required int pumpID,
    required PumpQueryModel query,
  }) async {
    try {
      Response response = await _dio.get(
        PumpApiPath.getPump.path.setPathWithParams([pumpID]),
        queryParameters: query.toJson(),
      );

      return PumpResponseModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
