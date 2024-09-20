import 'package:figmaapp/custom_wedgets/custom_wedget.dart';
import 'package:figmaapp/database/databasesec.dart';
import 'package:figmaapp/database/productdatabase.dart';
import 'package:figmaapp/screen/showdata.dart';
import 'package:figmaapp/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key,required });
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 425.w,
            height: 270.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1583391265517-35bbdad01209?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGZlbWFsZSUyMG1vZGVsfGVufDB8fDB8fHww'),fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 200,top: 100 ),
              child: Center(child: Text('Style Hire',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Sale',style: TextStyle(fontSize: 34
                  ,fontWeight: FontWeight.bold),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text('View all',style: TextStyle(fontSize:13),),
              ),
            ],
          ),
          Text('Super Summer sale',style: TextStyle(fontSize: 10,color: Colors.grey),),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 300,
            child:  ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Productdata().datalist.length,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Show(amir:Productdata().datalist[index])));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Product(
                          image: Productdata().datalist[index].productImage,
                          productname: Productdata().datalist[index].productName,
                          productprise: Productdata().datalist[index].productPrice,
                          color: Colors.red,
                          text: '-20%',
                      ),
                    ),
                  );

                }) ,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('New',style: TextStyle(fontSize: 34
                  ,fontWeight: FontWeight.bold),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text('View all',style: TextStyle(fontSize:13),),
              ),
            ],
          ),
          Text('You have never seen before',style: TextStyle(color: Colors.grey,),),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 300,
            child:  ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Datasec().datasec.length,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Show(amir:Datasec().datasec[index])));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Product(image: Datasec().datasec[index].productImage,
                          productname: Datasec().datasec[index].productName,
                          productprise: Datasec().datasec[index].productPrice,color: Colors.black,text:'New'),
                    ),
                  );

                }) ,
          ),

      
        ],
      ),
    ),
  );
}
}
