import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:slider/bottom_navabr.dart';
import 'package:slider/screen/animatednavbar.dart';
import 'package:slider/screen/bottomnavigationbar.dart';
import 'package:slider/screen/insertdata.dart';
import 'package:slider/screen/llist.dart';
import 'package:slider/screen/singup.dart';
import 'package:slider/screen/slider.dart';
import 'package:slider/view/data_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:ViewData(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(

              items: [
                Image.network('https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=1024x1024&w=is&k=20&c=iX0adGZVKv9wS5yrs0-hpFsJBnRAacZa1DcDZ0I9Bqk='),
                Image.network('https://media.istockphoto.com/id/1305462732/photo/headshot-studio-portrait-of-a-woman-in-profile-looking-at-the-camera.webp?b=1&s=170667a&w=0&k=20&c=0AXRV3wA2u6gi3ccQcnQ4ISs7m-WMk3icBA6IlLwH34='),
                Image.network('https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.webp?b=1&s=170667a&w=0&k=20&c=FycdXoKn5StpYCKJ7PdkyJo9G5wfNgmSLBWk3dI35Zw='),
              ],
              options: CarouselOptions(
                aspectRatio: 10 / 10,
                autoPlay: true,
                initialPage: 2,
                // scrollDirection: Axis.vertical,
                enlargeCenterPage: true,
                reverse: true,
                // autoPlayAnimationDuration: Duration(
                //   seconds: 0001
                // )
                autoPlayCurve: Curves.easeOutSine,
              )
          ),
          RangeSlider(
            activeColor: Colors.red,
              inactiveColor: Colors.black,
              max: 1,
              min: 0.1,
              values: RangeValues(0.1, 1),
              onChanged: (value) {
              },
          ),
        ],
      )
    );
  }
}
