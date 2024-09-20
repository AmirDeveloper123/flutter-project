import 'package:figmaapp/custom_wedgets/custom_button.dart';
import 'package:figmaapp/custom_wedgets/custome_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:figmaapp/helpers/empty_space.dart';
import 'package:figmaapp/screen/login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Singup_page extends StatefulWidget {
  const Singup_page({super.key});

  @override
  State<Singup_page> createState() => _Singup_pageState();
}

class _Singup_pageState extends State<Singup_page> {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  void signUpWithEmail() async {
    try {
      await FirebaseAuth.instance.
      createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: pass.text.trim(),
      );
      // If successful, navigate to another page or perform any desired action
      print('Sign up successful');
    } catch (e) {
      print('Error occurred: $e');
      // Handle or show error message to the user
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              80.height,
              // CustomeTextfiled(hint: 'Name'),
              10.height,
              CustomeTextfiled(hint: 'Email',controle: email),
              10.height,
              CustomeTextfiled(hint: 'Password',controle: pass),

              20.height,
              InkWell(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>  Login_form(),));},
                child: Align(child: Text('Allready Have account?',style: TextStyle(fontSize: 20),),
                alignment: Alignment.topRight,
                ),
              ),
              70.height,
              Custom_button( text: 'Singup',color: Colors.red,onpress: (){
                Fluttertoast.showToast(msg: 'SingUp Succeflluy',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP,
                  timeInSecForIosWeb: 3,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0,

                );
                signUpWithEmail();


                  }),
              150.height,
              Text('Or login with socail account'),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],

                    ),
                    child: Icon(Icons.add,color: Colors.blue,size: 40,),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],

                    ),
                    child: Icon(Icons.facebook,color: Colors.blue,size: 40,),
                  ),




                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
