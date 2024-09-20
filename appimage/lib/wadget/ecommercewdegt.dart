
import 'package:appimage/db/db.dart';
import 'package:flutter/material.dart';
class customm extends StatelessWidget {
  final String imag;
  final double width;
  final double height;
  const customm({super.key,required this.imag, required this.width, required this.height, });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
    height: height,

    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage(imag),fit: BoxFit.fill)
    ),
    );

  }
}
