// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  dynamic productImage;
  dynamic productName;
  dynamic productPrice;
  dynamic productDec;

  ProductModel({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productDec,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    productImage: json["product_image"],
    productName: json["product_name"],
    productPrice: json["product_price"],
    productDec: json["product_dec"],
  );

  Map<String, dynamic> toJson() => {
    "product_image": productImage,
    "product_name": productName,
    "product_price": productPrice,
    "product_dec": productDec,
  };
}
