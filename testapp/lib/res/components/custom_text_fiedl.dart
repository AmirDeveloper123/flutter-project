import 'package:flutter/material.dart';
import 'package:testapp/res/const/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final String? Function(String?)? validator;
  const CustomTextField({super.key,required this.controller ,required this.label ,required this.obscureText, this.validator});

  @override
  Widget build(BuildContext context) {
    return       TextFormField(
              controller: controller,
              obscureText:obscureText ,
              validator: validator,
              decoration: InputDecoration(
                hintText:label,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2 ,color:appColors.black)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2 ,color:appColors.black),
                
                ),

                
                
        
              ),
            );
  }
}