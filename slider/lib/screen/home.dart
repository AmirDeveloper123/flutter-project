
import 'package:flutter/material.dart';
import 'package:slider/view/sales_category.dart';
class Homescreen extends StatefulWidget {
   Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 430,
                height: 270,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/626572136/photo/young-woman-using-cellphone-and-looking-at-her-watch-outdoors.jpg?s=612x612&w=0&k=20&c=s-M43OQVHoheeZj5RrC16B1X2d3vFcXe2_kO_TctgHU='),fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100,right: 150),
                  child: Center(child: Text('Street Cloths',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text('Sale',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SalesCategory(),));
                      },
                      child: Text('view all'))
                ],
              ),
              Text('Super summer Sale'),
              SizedBox(height: 10,),
              SalesCategory(),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('New',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 300,

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 300,

                ),
              ),
            ]
        ),
      ),


    );
  }
}
