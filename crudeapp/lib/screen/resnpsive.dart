import 'package:crudeapp/screen/rsponsive/desktopbody.dart';
import 'package:crudeapp/screen/rsponsive/layoutbuldier.dart';
import 'package:crudeapp/screen/rsponsive/mobilebody.dart';
import 'package:flutter/material.dart';
class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: Layoutbuilder(
         mobilebody:Mobilebody(),
         deskbody: Desktopbody(),

       ),
    );
  }
}
