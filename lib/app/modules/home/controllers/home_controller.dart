import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oyk2023yazm3/app/data/models/dbuser_model.dart';
import 'package:oyk2023yazm3/app/data/models/user_model.dart';
import 'package:oyk2023yazm3/app/data/providers/dbuser_provider.dart';
import 'package:oyk2023yazm3/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final box = GetStorage();
  final dbuserProvider = Get.find<DbuserProvider>();
  User? user;
  List<Dbuser>? userList;
  final isReady = false.obs;
  final count = 0.obs;
  @override
  void onInit() async {
    final args = Get.arguments;
    final storedUser = box.read("User");
    user = args ?? (storedUser == null ? null : User.fromJson(storedUser));
    userList = await getUserList();
    super.onInit();
  }

  Future<int> getCount() async {
    await Future.delayed(Duration(seconds: 2));
    return 10;
  }

  Future<List<Dbuser>?> getUserList() async =>
      await dbuserProvider.getAllUsers();

  Future<void> logout() async {
    await box.remove("User");
    Get.offAllNamed(Routes.LOGIN);
  }

  @override
  void onReady() async {
    await getCount();
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
