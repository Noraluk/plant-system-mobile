import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:plant_system_mobile/app.dart';
import 'package:plant_system_mobile/blocs/app_bloc_observer.dart';
import 'package:plant_system_mobile/di/app_injection.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  AppInjection.initialize();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: AppBlocObserver(),
  );
}
