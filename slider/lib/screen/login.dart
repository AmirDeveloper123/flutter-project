import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Login extends StatelessWidget {
   Login({super.key});
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  void Singupwithemail() async{
    try{


      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text.trim());
      print('login Scucfuly');

    }catch(r){
      print('erro to login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.grey,
          title: Text('login'),
          centerTitle: true,
    ),
    body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SizedBox(height: 100,),
    Container(

    child: TextField(
    controller: email,
    decoration: InputDecoration(
    hintText: 'Email',
    border: OutlineInputBorder(),
    ),


    ),
    ),
    SizedBox(height: 10,),
    Container(
    child: TextField(
    controller:password,
    decoration: InputDecoration(
    hintText: 'password',
    border: OutlineInputBorder(),

    ),
    ),
    ),
    SizedBox(height: 10,),
    Container(
    width: 350,
    child: ElevatedButton(onPressed: (){Singupwithemail();},
    child: Text('Login')))

    ],
    ),
    ),
    );
  }
}
