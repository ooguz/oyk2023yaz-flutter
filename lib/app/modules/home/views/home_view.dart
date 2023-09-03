import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/data/widgets/adduser.dart';
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
          !GetPlatform.isMobile
              ? IconButton(
                  onPressed: () async {
                    controller.onRefresh();
                  },
                  icon: Icon(Icons.refresh))
              : Center(),
          IconButton(
              onPressed: () async {
                await controller.logout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Obx(() => controller.isReady.value
          ? RefreshIndicator(
              child: ListView.builder(
                  itemCount: controller.userList!.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(controller.userList![index].email!),
                        leading: Text(
                          "${controller.userList![index].id!}",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      )),
              onRefresh: () async => await controller.onRefresh())
          : Center(child: CircularProgressIndicator())),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.dialog(AddUserDialog());
          },
          child: Icon(Icons.add)),
    );
  }
}
