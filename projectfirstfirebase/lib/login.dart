import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Login extends StatelessWidget {
   Login({super.key});


  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  void Singup()async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text.trim());
      print(' login Succefuly');
    }catch(r){
      print('eroor to login');

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                label: Text('email'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: password,
              decoration: InputDecoration(
                label: Text('password'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Singup();

            }, child: Text('login'))

          ],
        ),
      ),
    );
  }
}
