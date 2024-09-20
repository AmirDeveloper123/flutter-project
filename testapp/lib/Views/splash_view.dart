import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testapp/Views/Auth/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginView()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue
      ,
      body: Center(child: Icon(Icons.person,size: 100,color: Colors.white,)),
    );
  }
}