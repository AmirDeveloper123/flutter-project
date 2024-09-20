import 'package:demohome/controller/countprovider.dart';
import 'package:demohome/controller/favourate_controller.dart';
import 'package:demohome/controller/themeController.dart';
import 'package:demohome/screens/favrite.dart';
import 'package:demohome/screens/increament.dart';
import 'package:demohome/screens/like.dart';
import 'package:demohome/screens/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>Countprovider()),
      ChangeNotifierProvider(create: (_)=>FavoirateController()),
      ChangeNotifierProvider(create: (_)=>ThemeController())
    ],
    child: MyApp(),
    )

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>( builder:(context, value, child) => 
       MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: IncrementPage(),
        theme: value.currenttheme,
        home:  FavoiratePage(),
      ),
    );
  }
}