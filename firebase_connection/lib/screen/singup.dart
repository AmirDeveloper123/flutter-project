import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_connection/model/model.dart';
import 'package:firebase_connection/screen/login.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
   Homepage({super.key});
   TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
void adddata()async{
  try{
        Userdata user=Userdata(
        userName: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim()
    );
    await FirebaseFirestore.instance.collection('userdata').add(user.toJson());
    print('data sumited');
  }catch(e){
    print('data not submited');

  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup page'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          const SizedBox(height: 50,),
          TextField(
            controller: nameController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'name',
            ),
          ),
          const SizedBox(height: 30,),
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
              adddata();
            },
            child: const Text('Sign Up'),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
          }, child: Text('login account'))
        ],
    ),
    );
  }
}
