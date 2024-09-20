import 'package:flutter/material.dart';
class Prac extends StatelessWidget {
  const Prac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(


        padding: EdgeInsets.symmetric(vertical: 200),
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,

              color: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,

              color: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,

              color: Colors.red,
            ),
          ),
















        ],
      )
    );
  }
}
