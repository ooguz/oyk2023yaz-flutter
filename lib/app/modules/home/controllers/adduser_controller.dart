import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdduserController extends GetxController {
  //TODO: Implement AdduserController
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final count = 0.obs;
  String emailValidationError = "";

  void validateEmail() {
    if (!emailController.text.isEmail) {
      emailValidationError = "E-posta hatalı";
    }
  }

  String? get errorText =>
      emailValidationError == "" ? null : emailValidationError;

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
