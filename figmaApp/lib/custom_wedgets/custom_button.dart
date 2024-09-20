import 'package:figmaapp/screen/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Custom_button extends StatelessWidget {
  final String text;
  final Color color;
  final   VoidCallback?  onpress;
  const Custom_button({super.key,required this.text,required this.color,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      child: ElevatedButton(
        onPressed:onpress, child:Text(text,style: TextStyle(color: Colors.white),),
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 20,),
          backgroundColor:color,

        ),
      ),
    );
  }
}
