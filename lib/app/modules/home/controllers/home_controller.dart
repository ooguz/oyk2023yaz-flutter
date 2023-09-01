import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oyk2023yazm3/app/data/models/user_model.dart';
import 'package:oyk2023yazm3/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final box = GetStorage();
  User? user;
  final isReady = false.obs;
  final count = 0.obs;
  @override
  void onInit() async {
    final args = Get.arguments;
    final storedUser = box.read("User");
    user = args ?? (storedUser == null ? null : User.fromJson(storedUser));
    super.onInit();
    await getCount();
  }

  Future<int> getCount() async {
    Future.delayed(Duration(seconds: 5));
    return 10;
  }

  @override
  void onReady() async {
    if (user == null) {
      Get.offAllNamed(Routes.LOGIN);
    }
    isReady.value = true;
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
