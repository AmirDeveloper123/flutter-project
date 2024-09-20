
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_connection/screen/showdata.dart';
import 'package:firebase_connection/screen/singup.dart';
import 'package:firebase_connection/updatedata.dart';
import 'package:flutter/material.dart';

import 'imageupload.dart';
class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<void> Loaddata(BuildContext context)async{
    final email=emailController.text.trim();
    final password=passwordController.text.trim();
    if(email.isNotEmpty && password.isNotEmpty){
      try {
        var querysnap =await FirebaseFirestore.instance.collection('userdata').
        where(
          'email', isEqualTo: email,
        ).
        where(
          'password', isEqualTo: password,
        ).get();
        if(querysnap.docs.isNotEmpty){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user login')));
          // Navigator.pushReplacement(
          //   context,
          //   // MaterialPageRoute(builder: (context) =>  Showdata (emaill: email,password: password,)), // Ensure HomeScreen is correctly referenced
          // // MaterialPageRoute(builder: (context) => HomePage(),)
          // );

        }else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('plz correct email password')));
        }
      }catch(e){
        print(e);

      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar
        (content:
      Text('plz Enter email or passsord'),

      )
      );

    }







  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          const SizedBox(height: 50,),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          const SizedBox(height: 30,),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {
              Loaddata(context);
              // Navigator.push(context, MaterialPageRoute(builder:(contex)=>Showdata()));
            },
            child: const Text('Login page'),
          ),

        ],
      ),
    );
  }
}
