import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_two/screen/loginpage.dart';
import 'package:project_two/screen/userModel.dart';
class ModelData extends StatelessWidget {
  ModelData({super.key});

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  // void Singupwithemail() async{
  //   try{
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: email.text.trim(),
  //         password: password.text.trim());
  //     print('Singup Succesfully');
  //   }catch(e){
  //     print('Erorr To Singup');
  //   }
  //   email.clear();
  //   password.clear();

  void addData(){
 var uid = DateTime.now();
    UserModel user = UserModel(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
      uid: uid.toString(),

    );
    FirebaseFirestore.instance.collection('usere').add(user.toJson());
  }

  // }



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
              addData();
            }, child: Text('Singup')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
            }, child: Text('login account'))
          ],
        ),
      ),
    );
  }
}
