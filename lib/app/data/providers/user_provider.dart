import 'package:get/get.dart';
import 'package:oyk2023yazm3/app/data/models/login_model.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return User.fromJson(map);
      if (map is List) return map.map((item) => User.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<User?> getUser(int id) async {
    final response = await get('user/$id');
    return response.body;
  }

  Future<User?> fakeLogin(Login login) async {
    if (login.username == "kamp" && login.password == "oyk2023") {
      return User(
          firstName: "Mustafa",
          lastName: "Akgül",
          email: "akgul@bilkent.edu.tr",
          username: "kamp",
          country: "TR",
          id: "1",
          birthDate: "1948");
    } else {
      Get.snackbar("Hata", "Kullanıcı adı ya da parola hatalı.");
      return null;
    }
  }

  Future<Response<User>> postUser(User user) async => await post('user', user);
  Future<Response> deleteUser(int id) async => await delete('user/$id');
}
