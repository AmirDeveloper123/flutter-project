import 'dart:html';

import 'package:flutter/material.dart';

class CustomeTextfield extends StatelessWidget {
 final String hintText;
 final Icon icon;
final Function validation;
  const CustomeTextfield({
    super.key,
    required this.hintText,
    required this.icon,
    required this.validation
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        // controller: passController,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hintText,
            prefixIcon: icon
        ),
        validator: (value){
          if(value!.isEmpty){
            return "plz enter";
          }
        }
    );
  }
}
