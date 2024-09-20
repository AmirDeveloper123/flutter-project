import 'package:flutter/material.dart';
class Shop extends StatelessWidget {
  const Shop({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('Shop'),
      ),
    );
  }
}
