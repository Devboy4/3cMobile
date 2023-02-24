class UserModel {
  String email;
  String password;

  UserModel({required this.email, required this.password});

  // UserModel.fromJson(Map<String, dynamic> json) {
  //   email = json['name'];
  //   password = json['slug'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.email;
    data['slug'] = this.password;
    return data;
  }
}