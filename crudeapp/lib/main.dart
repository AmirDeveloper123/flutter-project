import 'package:crudeapp/controler/crudapp_controler.dart';
import 'package:crudeapp/screen/homescreen.dart';
import 'package:crudeapp/screen/resnpsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Caculatore/calculatore.dart';

void main() {
  runApp(MultiProvider(providers: [
   ChangeNotifierProvider(create: (context) => Crudapp_controler(),)
  ],
  child: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home:Calculatore(),
    );
  }
}

