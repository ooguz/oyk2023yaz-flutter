import 'package:get/get.dart';

import '../models/dbuser_model.dart';

class DbuserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Dbuser.fromJson(map);
      if (map is List) return map.map((item) => Dbuser.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'http://antandros.net:8000/';
  }

  Future<Dbuser?> getDbuser(int id) async {
    final response = await get('dbuser/$id');
    return response.body;
  }

  Future<List<Dbuser>?> getAllUsers() async {
    final response = await get("users/");
    return response.body;
  }

  Future<Response<Dbuser>> postDbuser(Dbuser dbuser) async =>
      await post('dbuser', dbuser);
  Future<Response> deleteDbuser(int id) async => await delete('dbuser/$id');
}
