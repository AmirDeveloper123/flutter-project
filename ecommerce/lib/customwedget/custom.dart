import 'package:flutter/material.dart';
class Custom extends StatelessWidget {
  final String image;
  final String productname;
  final String productdesc;
  final String prise;
  const Custom({super.key,
    required this.image,
    required this.productname,
    required this.productdesc,
    required this.prise}
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 60,
              offset: Offset(0, 10),

            ),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 180,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 10,),
            Text(productname,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(productdesc,style: TextStyle(fontSize: 9,color: Colors.grey),),
            SizedBox(height: 5,),
            Text(prise,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
