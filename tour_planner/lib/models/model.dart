// To parse this JSON data, do
//
//     final detail = detailFromJson(jsonString);

import 'dart:convert';

Detail detailFromJson(String str) => Detail.fromJson(json.decode(str));

String detailToJson(Detail data) => json.encode(data.toJson());

class Detail {
  dynamic usertype;
  dynamic userid;
  dynamic otp;
  dynamic username;
  dynamic datefbirth;
  dynamic email;
  dynamic password;
  dynamic forgotpassword;
  dynamic confirmpassword;

  Detail({
     this.usertype,
    this.userid,
     this.otp,
    this.username,
    this.datefbirth,
     this.email,
    this.password,
     this.forgotpassword,
    this.confirmpassword,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    usertype: json["usertype"],
    userid: json["userid"],
    otp: json["otp"],
    username: json["username"],
    datefbirth: json["datefbirth"],
    email: json["email"],
    password: json["password"],
    forgotpassword: json["forgotpassword"],
    confirmpassword: json["confirmpassword"],
  );

  Map<String, dynamic> toJson() => {
    "usertype": usertype,
    "userid": userid,
    "otp": otp,
    "username": username,
    "datefbirth": datefbirth,
    "email": email,
    "password": password,
    "forgotpassword": forgotpassword,
    "confirmpassword": confirmpassword,
  };
}
