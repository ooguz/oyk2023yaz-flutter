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
              onPressed: () async {
                await controller.logout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Obx(() => Center(
          child: controller.isReady.value
              ? ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                        title: Text(controller.userList![index].email!),
                        leading: Text(
                          "${controller.userList![index].id!}",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ))
              : CircularProgressIndicator())),
    );
  }
}
