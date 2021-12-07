import 'package:get/get.dart';
import 'package:plant_system_mobile/constants/routes/routes.dart';
import 'package:plant_system_mobile/screens/home_page.dart';

class Routes {
  static String getInitialRoute = RoutePath.home.name;

  static List<GetPage<dynamic>>? getAll = [
    GetPage(
      name: RoutePath.home.name,
      page: () => const HomePage(),
    ),
  ];
}
