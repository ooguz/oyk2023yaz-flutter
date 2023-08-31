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
              icon: Icon(Icons.login))
        ],
      ),
      body: Center(
          child: Column(children: [
        Text(
          'Counter count:',
          style: TextStyle(fontSize: 20),
        ),
        Obx(() => Text(
              "${controller.count.value}",
              style: Theme.of(context).textTheme.displayMedium,
            )),
        IconButton(
            style: IconButton.styleFrom(minimumSize: Size(40, 40)),
            onPressed: () {
              controller.increment();
            },
            icon: Icon(Icons.add))
      ])),
    );
  }
}
