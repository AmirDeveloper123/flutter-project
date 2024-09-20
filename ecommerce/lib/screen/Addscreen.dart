import 'package:ecommerce/database/databasee.dart';
import 'package:ecommerce/model/model.dart';
import 'package:ecommerce/screen/carttscreen.dart';
import 'package:flutter/material.dart';
class Add_product extends StatelessWidget {
  ProductModel model;
   Add_product({super.key,required this.model });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 500,
            height: 800,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.10),
                  blurRadius: 60,
                  spreadRadius: 10,
                  offset: Offset(0, 5))
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width:double.infinity,
                  height: 300,
                  decoration: BoxDecoration(

                    image: DecorationImage(image: NetworkImage(model.productImage),fit: BoxFit.fill),
                  ),

                ),
                Text(model.productName,style: TextStyle(fontSize: 30),),
                Text(model.productPrice,style: TextStyle(fontSize: 30),),
                SizedBox(height: 200,),
                ElevatedButton(

                    style: ElevatedButton.styleFrom(

                      primary: Colors.blue, // Background color
                      onPrimary: Colors.white, // Foreground (text) color
                      shadowColor: Colors.blueAccent, // Shadow color
                      elevation: 5,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_screen(
                        model: model,
                      )
                      )
                      );

                    }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Icon(Icons.shopping_cart_outlined,size: 30,),
                    SizedBox(width: 10,),
                    Text('Add To cart',style: TextStyle(color: Colors.white,fontSize: 20),)
                  ],
                ))


              ],
            ),

          ),
        ),
      )

    );
  }
}
