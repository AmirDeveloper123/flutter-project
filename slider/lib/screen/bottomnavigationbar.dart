// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:slider/screen/home.dart';
// import 'package:slider/screen/prfile.dart';
// import 'package:slider/screen/shop.dart';
// class Botton extends StatefulWidget {
//   const Botton({super.key});
//   @override
//   State<Botton> createState() => _BottonState();
// }
// class _BottonState extends State<Botton> {
// var selected=0;
//
//   static const List<Widget> _item = <Widget>[
//      Homescreen(),
//     Searchscreen(),
//     Profilescreen(),
//   ];
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   body: _item.elementAt(selected),
//     //   bottomNavigationBar: BottomNavigationBar(
//     //     selectedItemColor: Colors.white,
//     //     backgroundColor: Colors.blueGrey,
//     //     currentIndex: selected,
//     //     onTap: (index){
//     //       setState(() {
//     //         selected=index;
//     //       });
//     //     },
//     //     items: [
//     //       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
//     //       BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
//     //       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
//     //     ],
//     //   ),
//     // );
//     return Scaffold(
//       body: Container(), //destination screen
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         icons: [
//           Icons.home,
//           Icons.search,
//           Icons.person
//         ],
//         activeIndex: selected,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.verySmoothEdge,
//         leftCornerRadius: 32,
//         rightCornerRadius: 32,
//         onTap: (index) => setState(() => selected = index),
//         //other params
//       ),
//     );
//   }
// }



import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Botton extends StatefulWidget {
  @override
  _BottonState createState() => _BottonState();
}

class _BottonState extends State<Botton> {
  int _currentIndex = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Bottom Navigation Bar'),
      ),
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(Icons.add),
        onPressed: () {
          // Action for FAB
        },
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        inactiveColor: Colors.black,
        activeColor: Colors.blue,
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // Optionally add other properties such as backgroundColor, activeColor, etc.
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Page'));
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Page'));
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Favorites Page'));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Page'));
  }
}