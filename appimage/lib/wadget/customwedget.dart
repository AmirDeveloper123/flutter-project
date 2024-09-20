import 'package:flutter/material.dart';
class custom extends StatelessWidget {
  final String  hintText;
  final Icon icon;
  final Color color;



  const custom({

    required this.hintText,
    required this.icon,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        decoration: InputDecoration(

            border: OutlineInputBorder(

            ),
            filled: true,
            hintText: hintText,
            prefixIcon:icon,
          fillColor:color,
        ),
    );
  }
}
