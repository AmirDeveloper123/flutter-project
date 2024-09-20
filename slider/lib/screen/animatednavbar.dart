import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:slider/screen/home.dart';
import 'package:slider/screen/shop.dart';
class Animtednav extends StatefulWidget {
  const Animtednav({super.key});

  @override
  State<Animtednav> createState() => _AnimtednavState();
}

class _AnimtednavState extends State<Animtednav> {
  int select=0;
  final iconelist=<IconData>[
    Icons.home,
    Icons.shopping_cart_outlined,
    Icons.shopping_bag,
    Icons.favorite_border,
    Icons.person,
  ];
  final List<Widget>_screen=[
     Homescreen(),
    Shop(),
    Homescreen(),
    Homescreen(),



  ];
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body:_screen[select],

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.miniCenterFloat,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        notchSmoothness: NotchSmoothness.sharpEdge,
        activeColor: Colors.red,
        icons:iconelist,
        iconSize: 30,
        activeIndex: select,
        onTap: (index){
         setState(() {
         select=index;
});
        },
      ),
    );
  }
}
