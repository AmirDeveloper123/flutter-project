import 'package:figmaapp/model/modelproduct.dart';
import 'package:flutter/material.dart';
class Show extends StatelessWidget {
  ProductModel amir;
  Show({super.key,required this.amir});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(amir.productName),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.share),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 410,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: NetworkImage(amir.productImage),fit: BoxFit.cover)
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),

                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
              ),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.red),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Color',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
              ),
              Icon(Icons.heart_broken,size: 40,)
            ],
          )
        ],
      ),
    );
  }
}
