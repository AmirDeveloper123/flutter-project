import 'package:flutter/material.dart';

class SalesCategory extends StatelessWidget {
  const SalesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final Image_list =[
      'https://i.pinimg.com/736x/f2/61/49/f2614961b550918ecda596fb2a7ef482.jpg',
    ];
    return Container(
      width: 450,
      height: 300,
      child:ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount:Image_list.length,
          itemBuilder: (contex,index,){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        // color: Colors.purple ,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: NetworkImage(Image_list[index]),fit: BoxFit.fill)
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Icon(Icons.star,color: Colors.grey,),
                          Icon(Icons.star,color: Colors.grey,),
                        ],
                      ),
                    ),
                    Text('Dorthy Perkins',style: TextStyle(color: Colors.grey),),
                    Text('Evening Dress',style: TextStyle(fontSize: 20),),
                    Text('Rs:15',style: TextStyle(fontSize: 20),),

                  ],
                ),

              ),
            );
          }
      ),
    );
  }
}
