import 'package:dio/dio.dart';
import 'package:plant_system_mobile/constants/pump/pump_api_path.dart';
import 'package:plant_system_mobile/extensions/string_extension.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_response_model/pump_activated_response_model.dart';
import 'package:plant_system_mobile/models/pump/pump_model/pump_model.dart';

class PumpRepository {
  const PumpRepository(this._dio);

  final Dio _dio;

  Future<PumpActivatedResponseModel> activePump({
    required int id,
    required PumpActivatedRequestModel body,
  }) async {
    try {
      Response response = await _dio.patch(
        PumpApiPath.activePump.path.setPathWithParams([id]),
        data: body.toJson(),
      );
      if (response.statusCode != 200) throw Exception(response.data);

      return PumpActivatedResponseModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<PumpModel> getPump({
    required int id,
  }) async {
    try {
      Response response = await _dio.get(
        PumpApiPath.getPump.path.setPathWithParams([id]),
      );

      if (response.statusCode != 200) throw Exception(response.data);

      return PumpModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
