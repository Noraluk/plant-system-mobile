import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/config/routes/routes.dart';
import 'package:plant_system_mobile/di/app_injection.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PumpBloc(pumpRepository: app.get<PumpRepository>()),
        )
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.getInitialRoute,
        getPages: Routes.getAll,
        defaultTransition: Transition.fade,
      ),
    );
  }
}
