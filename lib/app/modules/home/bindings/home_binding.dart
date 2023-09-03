import 'package:get/get.dart';

import 'package:oyk2023yazm3/app/data/providers/dbuser_provider.dart';
import 'package:oyk2023yazm3/app/modules/home/controllers/adduser_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdduserController>(
      () => AdduserController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DbuserProvider>(() => DbuserProvider());
  }
}
