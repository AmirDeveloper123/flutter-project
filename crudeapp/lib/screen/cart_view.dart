import 'package:crudeapp/model/datamodel.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  Productmodel productmodel;
   CardView({super.key,required this.productmodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('product view'),),

      body:  Column(children: [
        Text(productmodel.name),
        Text(productmodel.descpration),
        // Text(productmodel['name'],style: TextStyle(fontSize: 20),),
        // Text(productmodel['des'],style: TextStyle(fontSize: 20),)


      ],) ,
    );
  }
}
