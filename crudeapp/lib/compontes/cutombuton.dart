import 'package:flutter/material.dart';
class ButtonComponent extends StatelessWidget {
  final String text;
  final Color color;
  final Color textcolor;
  final TextEditingController? controller;
  final VoidCallback onPressed;
   ButtonComponent({super.key,required this.text,required this.color,required this.onPressed,required this.textcolor,this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(3),
        // width: 50,
        width: 200,
        height: 50,
        decoration: BoxDecoration(color:color,borderRadius: BorderRadius.circular(12)),
        child: Center(child: Text(text,style: TextStyle(color:textcolor),)),

      ),
    );

  }
}
