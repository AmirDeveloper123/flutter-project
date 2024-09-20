import 'package:ecommerce/database/databasee.dart';
import 'package:ecommerce/model/model.dart';
import 'package:flutter/material.dart';
class Cart extends StatelessWidget {
  ProductModel model;
  Cart({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           Container(
             width: double.infinity,
             height: 50,
             decoration: BoxDecoration(
             ),
             child: Row(
               children: [
                 Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage(model.productImage))
                   ),
                 ),
                 Container(
                   width: 100,
                   height: double.infinity,
                   child: Column(
                     children: [
                       Text(model.productName),
                       Text('Quantity 1'),
                     ],
                   ),
                 ),
                 SizedBox(width: 40,),
                 Text(model.productPrice,style: TextStyle(color: Colors.blue),)



               ],
             ),
           ),

          ],
        ),
      ),
    );
  }
}
