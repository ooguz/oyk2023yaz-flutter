import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/data/models/login_model.dart';
import 'package:oyk2023yazm3/app/data/models/user_model.dart';
import 'package:oyk2023yazm3/app/data/providers/user_provider.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
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

  Future<User?> login() async {
    final response = await userProvider.fakeLogin(Login(
        username: usernameController.text, password: passwordController.text));
  }

  void increment() => count.value++;
}
