// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

UserModel userFromJson(String str) => UserModel.fromJson(json.decode(str));

String userToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    dynamic userName;
    dynamic email;
    dynamic password;
    dynamic phoneNumber;
    dynamic image;
    dynamic uid;
    dynamic block;

    UserModel({
         this.userName,
         this.email,
         this.password,
         this.phoneNumber,
         this.image,
         this.uid,
         this.block,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
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
