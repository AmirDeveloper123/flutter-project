import 'package:figmaapp/dumy.dart';
import 'package:figmaapp/screen/home.dart';
import 'package:figmaapp/screen/login.dart';
import 'package:figmaapp/screen/mainpage.dart';
import 'package:figmaapp/screen/singup.dart';
import 'package:figmaapp/toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 928),
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Mainpage(),
        );
      },
    );
  }
}
