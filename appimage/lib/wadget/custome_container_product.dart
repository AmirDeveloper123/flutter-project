import 'package:flutter/material.dart';
import 'package:appimage/string.dart';
class CustomeContainer extends StatelessWidget {
  final String productName;
  final String productDes;
  final String image;
  final String price;
  final Color? color;
  final double? height;
  final double? width;
  final Color? textColor;
  final TextStyle? textStyle;
  const CustomeContainer({
    super.key,
    this.textColor,
    this.textStyle,
    required this.image,
    required this.price,
    required this.productDes,
    required this.productName,
    this.color,
    this.height,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 270,
      width: width ?? 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color ?? Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 60,
              offset: Offset(0, 4),
            ),
          ]
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.fill
                )
            ),
          ),
          SizedBox(height: 30,),
          Text(productName),
          SizedBox(height: 5,),
          Text(
            productDes,
            style: TextStyle(
                fontSize: 12,
                color: Colors.grey
            ),
          ),
          SizedBox(height: 5,),
          Text(
            price,
            style: textStyle ?? TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color:  Colors.blue
            ),
          ),
        ],
      ),
    );
  }
}
