import 'package:flutter/material.dart';
class Custom_textfield extends StatelessWidget {
  TextEditingController controler;
  String labeltext;
   Custom_textfield({super.key,required this.controler,required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controler,
      decoration: InputDecoration(
        label: Text(labeltext),
        border: OutlineInputBorder()
      ),

    );
  }
}
