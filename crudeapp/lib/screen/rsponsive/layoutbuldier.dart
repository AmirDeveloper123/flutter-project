import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Layoutbuilder extends StatelessWidget {
  final Widget mobilebody;
  final Widget deskbody;

  const Layoutbuilder({super.key,required this.mobilebody,required this.deskbody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,Constraints){
      if(Constraints.maxWidth <600){
        return mobilebody;
      }else{
        return deskbody;
      }
    }
    );
  }
}
