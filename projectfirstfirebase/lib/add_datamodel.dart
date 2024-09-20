import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectfirstfirebase/model.dart';
class Modeldata extends StatefulWidget {
  Modeldata({super.key});
  @override
  State<Modeldata> createState() => _SinguppageState();
}
class _SinguppageState extends State<Modeldata> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  // void picimage()async{
  //   await ImagePicker().pickImage(source: ImageSource.camera);
  // }
  // void Singup()async{
  //   try{
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: email.text.trim(),
  //         password: password.text.trim());
  //     print('Succefuly');
  //   }catch(r){
  //     print('eroor to singup');
  //
   adddata(){
     Userdata user=Userdata(
         email: email.text.trim(),
         password: password.text.trim(),
     );
     FirebaseFirestore.instance.collection('user').add(user.toJson());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                showDialog(context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Pick image from gallary'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: (){},

                              child: ListTile(
                                leading: Icon(Icons.camera_alt_outlined),
                                title: Text('camrara'),
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.browse_gallery),
                              title: Text('gallary'),
                            )
                          ],
                        ),
                      );
                    }
                );
              },
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,size: 100,),
              ),
            ),
            SizedBox(height: 10,),
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
              adddata();

            }, child: Text('Singup'))

          ],
        ),
      ),
    );
  }
}
