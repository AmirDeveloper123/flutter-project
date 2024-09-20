import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectfirstfirebase/add_datamodel.dart';
import 'package:projectfirstfirebase/fetechdata.dart';
import 'package:projectfirstfirebase/insertdata.dart';
import 'package:projectfirstfirebase/login.dart';
import 'package:projectfirstfirebase/singup.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Modeldata(),
  ));
}