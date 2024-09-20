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
  dynamic phoneNumber;
  dynamic image;
  dynamic uid;
  dynamic block;

  Userdata({
    this.userName,
    required this.email,
    required this.password,
    this.phoneNumber,
    this.image,
    this.uid,
    this.block,
  });

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
    userName: json["userName"],
    email: json["email"],
    password: json["password"],
    phoneNumber: json["phoneNumber"],
    image: json["image"],
    uid: json["uid"],
    block: json["block"],
  );

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "email": email,
    "password": password,
    "phoneNumber": phoneNumber,
    "image": image,
    "uid": uid,
    "block": block,
  };
}
