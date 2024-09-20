import 'package:figmaapp/myprfile.dart';
import 'package:figmaapp/screen/home.dart';
import 'package:figmaapp/screen/shop.dart';
import 'package:flutter/material.dart';
class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  State<Mainpage> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<Mainpage> {
  int slected=0;
  static const List<Widget> _listscreen = <Widget>[
    Homepage(),
    Shoppage(),
    Center(child: Text('3')),
    Center(child: Text('4')),
    Myprofile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listscreen.elementAt(slected),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        currentIndex: slected,
        onTap: (value){
          setState(() {
            slected=value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.shopping_cart_outlined),
              label: 'Shop'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.shopping_bag_outlined),
              label: 'Bag'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.favorite_border_outlined),
              label: 'Favorites'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person_2_outlined),
              label: 'Profile'
          ),
        ],
      )
    );

  }
}
