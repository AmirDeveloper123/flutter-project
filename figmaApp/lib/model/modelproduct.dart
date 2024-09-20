
import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  dynamic productImage;
  dynamic productName;
  dynamic productPrice;

  ProductModel({
    required this.productImage,
    required this.productName,
    required this.productPrice,

  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    productImage: json["product_image"],
    productName: json["product_name"],
    productPrice: json["product_price"],

  );

  Map<String, dynamic> toJson() => {
    "product_image": productImage,
    "product_name": productName,
    "product_price": productPrice,

  };
}
