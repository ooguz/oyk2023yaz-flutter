class Item {
  String? title;
  String? description;
  int? id;
  int? ownerId;

  Item({this.title, this.description, this.id, this.ownerId});

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    id = json['id'];
    ownerId = json['owner_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['id'] = id;
    data['owner_id'] = ownerId;
    return data;
  }
}
