import 'package:ecommerce/customwedget/custom.dart';
import 'package:ecommerce/database/databasee.dart';
import 'package:ecommerce/model/model.dart';
import 'package:ecommerce/screen/thirdscreendata.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EcommercApp'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body:  GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          itemCount:Database_mange().product.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.04
          ),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Thisshow(
                    dataaaaa: [ Database_mange().product[index],]
                ),
                )
                );
              },
              child: Custom(
                  image: Database_mange().product[index].productImage,
                  productname:Database_mange().product[index].productName,
                  productdesc: Database_mange().product[index].productDec,
                  prise: Database_mange().product[index].productPrice),
            );
          }),

    );
  }
}
