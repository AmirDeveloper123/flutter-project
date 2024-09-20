

import 'package:appimage/helpers/custome_widget/custome_textfield.dart';
import 'package:appimage/wadget/customwedget.dart';
import 'package:flutter/material.dart';

import '../db/logindatabase.dart';
class Login extends StatelessWidget {
   Login({super.key});
  @override
  Widget build(BuildContext context) {
    final form = GlobalKey<FormState>();
    final email=TextEditingController();
    final pass=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("form"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Form(
        key: form,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              custom(
                icon: Icon(Icons.email_outlined),
                 hintText: 'email',color: Colors.red,
              ),
              Spacer(),
              custom(
                color: Colors.yellow,
                  hintText: "p", icon:Icon(Icons.phone)),
              Spacer(),
              custom(
                color: Colors.brown,
                  hintText: "de", icon:Icon(Icons.phone)),



              // TextFormField(
              //   controller: email,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     hintText: "Email",
              //       prefixIcon:Icon(Icons.email_rounded)
              //   ),
              //   validator: (value){
              //     if(value!.isEmpty){
              //       return "plz enter";
              //     }
              //   }
              // ),
              // TextFormField(
              //   controller: pass,
              //
              //     decoration: InputDecoration(
              //         border: OutlineInputBorder(),
              //         hintText: "passwrod",
              //         prefixIcon:Icon(Icons.remove_red_eye)
              //     ),
              //     validator: (value){
              //       if(value!.isEmpty){
              //         return "plz enter";
              //       }
              //
              //     }
              // ),

              // CustomeTextfield(
              //   icon: Icon(Icons.email_outlined),
              //   hintText: 'email',
              //   validation: (value){
              //
              //   },
              // ),
              // SizedBox(height: 10,),
              // CustomeTextfield(
              //   icon: Icon(Icons.lock),
              //   hintText: 'password',
              //   validation:(value){
              //
              //   },
              // ),


              Spacer(),
              ElevatedButton(onPressed: (){
              if(Data().login[0].useremail== email.text.toString() && Data().login[0].userpassword==pass.text.toString()

              ){print("login");
              }else{
                print("invaild");
              }

              }, child: Text("Submit"))


            ],
          ),
        ),
      ),
    );
  }
}
