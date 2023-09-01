import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oyk2023yazm3/app/data/models/login_model.dart';
import 'package:oyk2023yazm3/app/data/providers/user_provider.dart';
import 'package:oyk2023yazm3/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final box = GetStorage();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final isObscure = true.obs;
  final count = 0.obs;
  final userProvider = Get.find<UserProvider>();
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

  Future<void> login() async {
    final response = await userProvider.fakeLogin(Login(
        username: usernameController.text, password: passwordController.text));
    if (response != null) {
      box.write("User", response);
      Get.offAllNamed(Routes.HOME, arguments: response);
    } else {
      Get.snackbar("Hata", "401");
    }
  }

  void increment() => count.value++;
}
