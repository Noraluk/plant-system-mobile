import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_system_mobile/di/network.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

GetIt app = GetIt.instance;

class AppInjection {
  static initialize() {
    provideNetwork();
    providePumpRepository();
  }

  static provideNetwork() {
    app.registerSingleton(Network.provideHttpClient());
  }

  static providePumpRepository() {
    app.registerSingleton(PumpRepository(app.get<Dio>()));
  }
}
