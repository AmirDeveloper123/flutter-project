import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Singuppage extends StatelessWidget {
  Singuppage({super.key});
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  void Singupwithemail() async{
    try{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim());
    print('Singup Succesfully');
  }catch(e){
      print('Erorr To Singup');
    }
    email.clear();
    password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Singup'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){Singupwithemail();}, child: Text('Singup'))
          ],
        ),
      ),
    );
  }
}
