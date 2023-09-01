import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/data/models/user_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final User user = Get.arguments;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
