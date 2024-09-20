import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:slider/screen/login.dart';
class Singup extends StatelessWidget {
   Singup({super.key});
TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();
void Singupwithemail()async{
  try{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim());
    print('Login Succesfully');

  }catch(e){
    print('login eror');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Singup'),
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
            InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));},
              child: Text('Allready have account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ,
            ),
            SizedBox(height: 50,),
            Container(
                width: 350,
                child: ElevatedButton(onPressed: (){Singupwithemail();},
                    child: Text('Singup')))

        ],),
      ),
    );
  }
}
