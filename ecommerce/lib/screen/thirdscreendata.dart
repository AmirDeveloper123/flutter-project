
import 'package:ecommerce/database/databasee.dart';
import 'package:ecommerce/model/model.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screen/fourthcartscreen.dart';



class Thisshow extends StatelessWidget {
  // ProductModel mode;
  List<ProductModel> dataaaaa;
    Thisshow({super.key,required this.dataaaaa});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
      ),
      body:GridView.builder(
          itemCount: Database_mange().product.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1),
          itemBuilder: (context,index){
        return Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image:NetworkImage(dataaaaa[index].productImage)),
              ),

            ),
            Text(dataaaaa[index].productName),
            SizedBox(height: 10,),
            // Text(mode.productPrice),
            SizedBox(height: 10,),
            // Text(mode.productDec),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: (){

            Navigator.push(context,MaterialPageRoute(
              builder:(context)=>Cart(
                model: dataaaaa[index]),
            ),
            );

          }, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart_outlined,color: Colors.white,),
              Text('Add To Cart',style: TextStyle(color: Colors.white),),
            ],
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
          ),

          ],
        );
          }
          ),

      //Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 150),
      //         child: Container(
      //           width: 300,
      //           height: 200,
      //           decoration: BoxDecoration(
      //
      //             image:DecorationImage(image: NetworkImage(mode.productImage),fit: BoxFit.fill)
      //           ),
      //         ),
      //
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Container(
      //
      //             width: 50,
      //             height: 50,
      //             decoration: BoxDecoration(
      //
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: Colors.grey.withOpacity(0.5),
      //                     blurRadius: 60,
      //                     offset: Offset(0, 20)
      //                   )
      //                 ],
      //                 image:DecorationImage(image: NetworkImage(mode.productImage)),
      //
      //             ),
      //           ),
      //           Container(
      //
      //             width: 50,
      //             height: 50,
      //             decoration: BoxDecoration(
      //
      //               boxShadow: [
      //                 BoxShadow(
      //                     color: Colors.grey.withOpacity(0.5),
      //                     blurRadius: 60,
      //                     offset: Offset(0, 20)
      //                 )
      //               ],
      //               image:DecorationImage(image: NetworkImage(mode.productImage)),
      //
      //             ),
      //           ),
      //           Container(
      //
      //             width: 50,
      //             height: 50,
      //             decoration: BoxDecoration(
      //
      //               boxShadow: [
      //                 BoxShadow(
      //                     color: Colors.grey.withOpacity(0.5),
      //                     blurRadius: 60,
      //                     offset: Offset(0, 20)
      //                 )
      //               ],
      //               image:DecorationImage(image: NetworkImage(mode.productImage)),
      //
      //             ),
      //           ),
      //           Container(
      //
      //             width: 50,
      //             height: 50,
      //             decoration: BoxDecoration(
      //
      //               boxShadow: [
      //                 BoxShadow(
      //                     color: Colors.grey.withOpacity(0.5),
      //                     blurRadius: 60,
      //                     offset: Offset(0, 20)
      //                 )
      //               ],
      //               image:DecorationImage(image: NetworkImage(mode.productImage)),
      //
      //             ),
      //           ),
      //           Container(
      //
      //             width: 50,
      //             height: 50,
      //             decoration: BoxDecoration(
      //
      //               boxShadow: [
      //                 BoxShadow(
      //                     color: Colors.grey.withOpacity(0.5),
      //                     blurRadius: 60,
      //                     offset: Offset(0, 20)
      //                 )
      //               ],
      //               image:DecorationImage(image: NetworkImage(mode.productImage)),
      //
      //             ),
      //           ),
      //         ],
      //       ),
      //       Text(mode.productName,style: TextStyle(fontSize: 20),),
      //       Text(mode.productPrice,style: TextStyle(color: Colors.blue),),
      //       Text(mode.productDec),
      //       SizedBox(height: 40,),
      //
      //       ElevatedButton(onPressed: (){
      //
      //
      //         Navigator.push(context,MaterialPageRoute(builder:(context)=>Cart(
      //             model: Database_mange().product[0]),
      //         ),
      //         );
      //
      //       }, child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.shopping_cart_outlined,color: Colors.white,),
      //           Text('Add To Cart',style: TextStyle(color: Colors.white),),
      //         ],
      //       ),
      //       style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
