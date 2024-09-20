import 'package:figmaapp/custom_wedgets/custom_button.dart';
import 'package:figmaapp/custom_wedgets/custome_textfield.dart';
import 'package:figmaapp/helpers/empty_space.dart';
import 'package:figmaapp/screen/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Login_form extends StatefulWidget {

  Login_form({super.key});

  @override
  State<Login_form> createState() => _Login_formState();
}

class _Login_formState extends State<Login_form> {
  TextEditingController email=TextEditingController();

  TextEditingController password=TextEditingController();
  void Loginwithemail()async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text.trim(),
      );print('Login Succesfully ');
      Navigator.push(context, MaterialPageRoute(builder: (context) => Mainpage(),));
    }catch(e){
      print('error to login');
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Login',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          // SizedBox(height: 40,),
              80.height,
              CustomeTextfiled(hint: 'Email',controle: email,),
              10.height,
              CustomeTextfiled(hint: 'Password',controle: password,),
              20.height,
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Text('Forgetten Your Password',style: TextStyle(fontSize: 20),
                  // textAlign: TextAlign.end,
                ),
              ),
              70.height,
              Custom_button(text: 'Login',color: Colors.red,onpress: (){Loginwithemail();}),
              70.height,

              SizedBox(height: 150,),
              Text('Or login with socail account'),
              SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],

                ),
                child: Icon(Icons.facebook,color: Colors.blue,size: 30,),
              ),
              SizedBox(width: 30,),
              Container(
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],

                ),
                child: Icon(Icons.facebook,color: Colors.blue,size: 30,),
              ),




            ],
          )

            ],
          ),
        ),
      ),
    );
  }
}
