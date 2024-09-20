import 'package:appimage/model/ecommercemodel.dart';
import 'package:flutter/material.dart';
class ShowData extends StatelessWidget {


  ProductModel modle;
    ShowData({super.key,required this.modle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  width: 300,
  height: 300,
  decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage(modle.productImage))
  ),
),

    );
  }
}
