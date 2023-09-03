import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUserDialog extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxString? emailError;
  AddUserDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
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
                  icon: Icon(Icons.email),
                  hintText: "E-posta",
                  errorText: emailError.value),
            ),
            TextField(
              controller: passwordController,
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
      ),
    );
  }
}
