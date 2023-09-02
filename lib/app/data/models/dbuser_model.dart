import 'package:oyk2023yazm3/app/data/models/item_model.dart';

class Dbuser {
  String? email;
  int? id;
  bool? isActive;
  List<Item>? items;

  Dbuser({this.email, this.id, this.isActive, this.items});

  Dbuser.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    id = json['id'];
    isActive = json['is_active'];
    if (json['items'] != null) {
      items = <Item>[];
      json['items'].forEach((v) {
        items?.add(Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['id'] = id;
    data['is_active'] = isActive;
    if (items != null) {
      data['items'] = items?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
