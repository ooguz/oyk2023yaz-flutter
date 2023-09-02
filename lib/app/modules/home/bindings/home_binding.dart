import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/data/providers/dbuser_provider.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DbuserProvider>(() => DbuserProvider());
  }
}
