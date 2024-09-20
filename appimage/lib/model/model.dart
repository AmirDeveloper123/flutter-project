// To parse this JSON data, do
//
//     final galleryMode = galleryModeFromJson(jsonString);

import 'dart:convert';

GalleryMode galleryModeFromJson(String str) => GalleryMode.fromJson(json.decode(str));

String galleryModeToJson(GalleryMode data) => json.encode(data.toJson());

class GalleryMode {
  dynamic image;
  dynamic imagename;

  GalleryMode({
    required this.image,
    required this.imagename,
  });

  factory GalleryMode.fromJson(Map<String, dynamic> json) => GalleryMode(
    image: json["image"],
    imagename: json["imagename"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "imagename": imagename,
  };
}
