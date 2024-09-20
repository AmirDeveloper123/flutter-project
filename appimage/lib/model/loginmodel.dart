// To parse this JSON data, do
//
//     final galleryMode = galleryModeFromJson(jsonString);

import 'dart:convert';

GalleryMode galleryModeFromJson(String str) => GalleryMode.fromJson(json.decode(str));

String galleryModeToJson(GalleryMode data) => json.encode(data.toJson());

class GalleryMode {
  dynamic useremail;
  dynamic userpassword;

  GalleryMode({
    required this.useremail,
    required this.userpassword,
  });

  factory GalleryMode.fromJson(Map<String, dynamic> json) => GalleryMode(
    useremail: json["useremail"],
    userpassword: json["userpassword"],
  );

  Map<String, dynamic> toJson() => {
    "useremail": useremail,
    "userpassword": userpassword,
  };
}
