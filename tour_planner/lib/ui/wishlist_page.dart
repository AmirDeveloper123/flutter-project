import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('wish list'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:size.width <500 ? 2 : 4),
        itemBuilder: (context, index) => Card(
          color: Colors.grey,
        ),
      ),
    );
  }
}
