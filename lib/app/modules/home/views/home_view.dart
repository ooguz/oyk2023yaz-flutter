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
            TextEditingController emailController = TextEditingController();
            TextEditingController passwordController = TextEditingController();
            Get.dialog(Dialog(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      "Yeni kullanıcı",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          icon: Icon(Icons.email), hintText: "E-posta"),
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.password), hintText: "Parola"),
                    ),
                    Divider(),
                    ElevatedButton(onPressed: () {}, child: Text("Oluştur"))
                  ],
                ),
              ),
            ));
          },
          child: Icon(Icons.add)),
    );
  }
}
