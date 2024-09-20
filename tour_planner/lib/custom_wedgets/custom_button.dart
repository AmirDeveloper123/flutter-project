import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Custom_button extends StatelessWidget {
  String buttonname;
  Color? buttoncolor;
  final IconData? icon;
  TextStyle? style;
  VoidCallback buttonaction;
   Custom_button({super.key,required this.buttonaction,required this.buttonname,required this.buttoncolor,this.style,this.icon,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonaction,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:buttoncolor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Icon(icon),
            SizedBox(width: 10,),

            Text(buttonname,style: style),

          ],
        ),
      ),
    );
  }
}
