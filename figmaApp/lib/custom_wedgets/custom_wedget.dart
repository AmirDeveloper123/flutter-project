import 'package:flutter/material.dart';
class Product extends StatelessWidget {
  final String image;
  final String productname;
  final String productprise;
  final Color color;
  final String text;
  const Product({
    super.key,
    required this.text,
    required this.color,
    required this.image,
    required this.productname,
    required this.productprise
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      width: 150,
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:DecorationImage(image: NetworkImage(image),fit: BoxFit.fill)
            ),
            // child: Stack(
            //   children: [
            //     Positioned(
            //       top:10,
            //       left: 7,
            //       child: Container(
            //         decoration: BoxDecoration(
            //             color:color,
            //           borderRadius: BorderRadius.circular(10)
            //         ),
            //         width:40,
            //         height: 22,
            //         child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
            //       ),
            //     ),
            //     Positioned(
            //         left:110,
            //         top: 160,
            //         child: CircleAvatar(
            //           child: Icon(Icons.heart_broken,size: 20,),
            //         )
            //     ),
            //   ],
            // ),
          ),
              Positioned(
                  left:110,
                  top: 160,
                  child: CircleAvatar(
                    child: Icon(Icons.heart_broken,size: 20,),
                  )
              ),
          Positioned(
            top: 200,
            child: Row(
              children: [
                Icon(Icons.star,color: Colors.orange,),
                Icon(Icons.star,color: Colors.orange,),
                Icon(Icons.star,color: Colors.orange,),
                Icon(Icons.star,color: Colors.orange,),
                Icon(Icons.star,),
                Icon(Icons.star),
              ],
            ),
          ),
          Positioned(
              top: 220,
              child: Text('Dorthy Picknsey',style: TextStyle(color: Colors.grey),)),
          Positioned(
              top: 240,
              child: Text(productname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          Positioned(
              top: 265,
              child: Text(productprise,style: TextStyle(color: Colors.red),)),
        ],
      )
    );
  }
}
