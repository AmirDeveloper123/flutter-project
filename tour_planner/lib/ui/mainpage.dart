import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_planner/custom_wedgets/custom_button.dart';
import 'package:tour_planner/ui/homepage.dart';
import 'package:tour_planner/ui/profile.dart';
import 'package:tour_planner/ui/wishlist_page.dart';
class Mainpage extends StatefulWidget {
   Mainpage({super.key});
  @override
  State<Mainpage> createState() => _MainpageState();
}
class _MainpageState extends State<Mainpage> {
   var seltected=0;
  final List<Widget> _pages = [
    Home_page(),
    
    WishList(),
    Center(child: Text('Map', style: TextStyle(fontSize: 24))),
    Profile_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:_pages[seltected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: seltected,
        onTap: (index){
          setState(() {
            seltected=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heart),
            label: 'Wishlist'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),

        ],
      ),
    );
  }
}
