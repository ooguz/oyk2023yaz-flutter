import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/modules/home/controllers/adduser_controller.dart';

class AdduserView extends GetView<AdduserController> {
  const AdduserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            "Yeni kullanıcı",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          TextField(
            controller: controller.emailController,
            decoration: InputDecoration(
                icon: Icon(Icons.email), hintText: "E-posta", errorText: null),
          ),
          TextField(
            controller: controller.passwordController,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: "Parola",
            ),
          ),
          Divider(),
          ElevatedButton(onPressed: () {}, child: Text("Oluştur"))
        ],
      ),
    );
  }
}
