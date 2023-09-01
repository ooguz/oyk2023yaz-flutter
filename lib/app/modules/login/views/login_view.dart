import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.isPhone
                    ? 15
                    : context.isTablet
                        ? context.mediaQuerySize.width / 4
                        : context.mediaQuerySize.width / 3),
            child: Column(
              children: [
                TextField(
                  controller: controller.usernameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Username", icon: Icon(Icons.person)),
                ),
                Obx(() => TextField(
                      controller: controller.passwordController,
                      obscureText: controller.isObscure.value,
                      decoration: InputDecoration(
                          suffix: IconButton(
                              onPressed: () {
                                controller.isObscure.value =
                                    !controller.isObscure.value;
                              },
                              icon: controller.isObscure.value
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                          hintText: "Password",
                          icon: Icon(Icons.password)),
                    )),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                    onPressed: () async {
                      await controller.login();
                    },
                    icon: Icon(Icons.login),
                    label: Text("Login"))
              ],
            )),
      ),
    );
  }
}
