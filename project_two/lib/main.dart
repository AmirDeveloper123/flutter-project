import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_two/screen/add_data_throw_model.dart';
import 'package:project_two/screen/fetechdata.dart';
import 'package:project_two/screen/loginpage.dart';
import 'package:project_two/screen/singup.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
runApp(MaterialApp(
  home: ModelData(),
))  ;
}
