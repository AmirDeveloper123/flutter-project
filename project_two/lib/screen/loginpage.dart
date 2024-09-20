
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_two/screen/insetdata.dart';
class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  Future<void> loadUser()async{
    final  email = emailController.text.trim();
    final password = passwordController.text.trim();
    if(email.isEmpty || password.isEmpty){
      return print('email or pass is empty');
    }

    try{
      var querySnapShot = await FirebaseFirestore.instance.collection('usere').where(
        'email' , isEqualTo: email,
      ).where(
        'password' , isEqualTo: password
      ).get();

      if(querySnapShot.docs.isNotEmpty){
        print('user load success');
      }else{
        print('invalid email');
      }


    }catch(e){
      print('invalid user load $e');

    }

  }
  // void Singupwithemail() async{
  //   try{
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: email.text.trim(),
  //         password: password.text.trim());
  //     Fluttertoast.showToast(
  //         fontSize: 20,
  //         msg: 'Login',
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.TOP,
  //         textColor: Colors.red,
  //         backgroundColor: Colors.white
  //     );
  //   }catch(e){
  //     Fluttertoast.showToast(
  //       fontSize: 20,
  //         msg: 'correct email / password',
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.TOP,
  //         textColor: Colors.red,
  //       backgroundColor: Colors.white
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              loadUser();
              // Navigator.push(context,MaterialPageRoute(builder: (context) => Insertdata (),));
              }, child: Text('login'))
          ],
        ),
      ),
    );
  }
}
