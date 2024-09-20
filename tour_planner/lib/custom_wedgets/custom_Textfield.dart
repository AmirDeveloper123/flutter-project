import 'package:flutter/material.dart';
class Custom_textfield extends StatelessWidget {
  String labaltext;
  Icon? surfixcon;
  VoidCallback? press;
  TextEditingController controller;
   Custom_textfield({super.key,required this.labaltext,required this.controller,this.surfixcon,this.press});

  @override
  Widget build(BuildContext context) {
    return
     Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
       ),
       height: 50,
       child: TextField(
         onTap: press,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon:surfixcon,
            floatingLabelStyle:TextStyle(
              color: Colors.blueAccent,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blueAccent,
              width: 2,
              ),
            ),
            label: Text(labaltext),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

            )
          ),
       ),
     );
  }
}
