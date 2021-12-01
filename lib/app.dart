import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';
import 'package:plant_system_mobile/bloc/pump/pump_bloc.dart';
import 'package:plant_system_mobile/config/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PumpBloc(),
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
