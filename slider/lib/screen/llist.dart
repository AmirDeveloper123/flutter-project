import 'package:flutter/material.dart';
class Score extends StatelessWidget {
  var lis=[1,2,3,4,5,6,7,8,9,10,11,12,13,];
   Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3D Animation'),
      ),
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:NetworkImage('https://images.unsplash.com/photo-1610730297006-ed0e847c34f9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTV8fHxlbnwwfHx8fHw%3D'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          Center(
            child:ListWheelScrollView(
      itemExtent: 150,
      children:lis.map((value) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                offset: Offset(0, 10),
                blurRadius: 20.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.23),
                offset: Offset(0, 6),
                blurRadius: 6.0,
              ),



            ]

        ),

      )).toList(),


    ),
          ),
        ],
      ),


      // body: ListWheelScrollView(
      //   itemExtent: 200,
      //   children:lis.map((value) =>  Container(
      //     width: double.infinity,
      //     decoration: BoxDecoration(
      //         color: Colors.blue,
      //         borderRadius: BorderRadius.circular(20.0),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.blue.withOpacity(0.2),
      //             offset: Offset(0, 10),
      //             blurRadius: 20.0,
      //           ),
      //           BoxShadow(
      //             color: Colors.black.withOpacity(0.23),
      //             offset: Offset(0, 6),
      //             blurRadius: 6.0,
      //           ),
      //
      //
      //
      //         ]
      //
      //     ),
      //
      //   )).toList(),
      //
      //
      // ),
    );
  }
}
