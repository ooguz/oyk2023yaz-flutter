import 'package:get/get.dart';

import '../models/item_model.dart';

class ItemProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Item.fromJson(map);
      if (map is List) return map.map((item) => Item.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Item?> getItem(int id) async {
    final response = await get('item/$id');
    return response.body;
  }

  Future<Response<Item>> postItem(Item item) async => await post('item', item);
  Future<Response> deleteItem(int id) async => await delete('item/$id');
}
