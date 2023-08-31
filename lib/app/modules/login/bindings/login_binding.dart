import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/data/providers/user_provider.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<UserProvider>(() => UserProvider());
  }
}
