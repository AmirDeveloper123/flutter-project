import 'package:appimage/screen/design.dart';
import 'package:appimage/screen/ecommercedesing.dart';
import 'package:appimage/screen/login.dart';
import 'package:appimage/screen_view/likepage.dart';
import 'package:appimage/screen_view/responsive_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controler_provider/likepage_provider.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Likepage_provider(),)
  ],
  child:MyApp() ,
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

          debugShowCheckedModeBanner: false,
          home: Image_picker  (),
        );
  }
}
