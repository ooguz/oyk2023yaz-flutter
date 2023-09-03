import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdduserController extends GetxController {
  //TODO: Implement AdduserController
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final count = 0.obs;
  final emailValidationError = "".obs;

  void validateEmail() {
    if (!emailController.text.isEmail) {
      emailValidationError.value = "E-posta hatalı";
    }
  }

  String? get errorText =>
      emailValidationError.value == "" ? null : emailValidationError.value;

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
