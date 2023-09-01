import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(Routes.LOGIN);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
          child: Column(children: [
        ListTile(
          title:
              Text("${controller.user.firstName} ${controller.user.lastName}"),
          subtitle: Text("${controller.user.email}"),
          trailing: Text(
              "${DateTime.now().year - int.parse(controller.user.birthDate!)}"),
        )
      ])),
    );
  }
}
