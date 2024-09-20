// To parse this JSON data, do
//
//     final userdata = userdataFromJson(jsonString);

import 'dart:convert';

Userdata userdataFromJson(String str) => Userdata.fromJson(json.decode(str));

String userdataToJson(Userdata data) => json.encode(data.toJson());

class Userdata {
  dynamic userName;
  dynamic email;
  dynamic password;

  Userdata({
    required this.userName,
    required this.email,
    required this.password,
  });

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
    userName: json["userName"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "email": email,
    "password": password,
  };
}
