import 'package:ecommerce/database/databasee.dart';
import 'package:ecommerce/model/model.dart';
import 'package:flutter/material.dart';
class Cart_screen extends StatefulWidget {
  ProductModel model;
   Cart_screen({super.key,required this.model});

  @override
  State<Cart_screen> createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen> {

  bool isc=false;
  int radio=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
         child: Column(
           children: [
             Checkbox(
                 value:isc,
                 onChanged: (value){
                   setState(() {
                     isc = value!;
                   });
             }
             ),
SizedBox(height: 20,),
Radio(
    value: 1,
    groupValue: radio,
    onChanged: (value){
      setState(() {
        radio=value!;
      });

    }),
             SizedBox(height: 20,),
             Radio(
                 value: 2,
                 groupValue: radio,
                 onChanged: (value){
                   setState(() {
                     radio=value!;
                   });


                 }),SizedBox(height: 20,),
             Radio(
                 value: 3,
                 groupValue: radio,
                 onChanged: (value){
                   setState(() {
                     radio=value!;
                   });

                 }),

SizedBox(height: 20,),
             Text('Cart',style: TextStyle(fontSize: 30),),
             Row(
              children: [
                SizedBox(height: 29,),

                Container(
                  width:100 ,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(widget.model.productImage),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(width: 10,),
                Text(widget.model.productName,style: TextStyle(fontSize: 20),),
                SizedBox(width: 10,),
                Text(widget.model.productPrice,style: TextStyle(fontSize: 20,color: Colors.blue),),

              ],
                     ),
             Container(
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage('assets/1.png'),fit: BoxFit.fill)
               ),
             )
           ],
         ),
      ),
    );
  }
}
