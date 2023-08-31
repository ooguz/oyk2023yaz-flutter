class User {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? birthDate;
  String? email;
  String? country;

  User(
      {this.id,
      this.firstName,
      this.lastName,
      this.username,
      this.birthDate,
      this.email,
      this.country});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    birthDate = json['birth_date'];
    email = json['email'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['username'] = username;
    data['birth_date'] = birthDate;
    data['email'] = email;
    data['country'] = country;
    return data;
  }
}
