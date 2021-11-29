import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_system_mobile/config/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.getInitialRoute,
      getPages: Routes.getAll,
      defaultTransition: Transition.fade,
    );
  }
}
