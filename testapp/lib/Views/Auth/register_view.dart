import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testapp/Views/Auth/login_view.dart';
import 'package:testapp/res/components/custom_text_fiedl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterView extends StatelessWidget {
   RegisterView({super.key});
  TextEditingController _namecontroler = TextEditingController();
  TextEditingController _emailcontroler = TextEditingController();
  TextEditingController _passwordcontroler = TextEditingController();
  void singupdata(BuildContext context)async{

    try {
  final firebaseAuth =  FirebaseAuth.instance;
  
  
  await firebaseAuth.createUserWithEmailAndPassword(
    email: _emailcontroler.text.trim(),
    password: _passwordcontroler.text.trim(),
  );
addData(context);
  print('register sucess');
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}



   



  }


  Future<void>  addData(context)async{
     try{
    FirebaseFirestore.instance.collection('singupdata').add({
        'name':_namecontroler.text.trim(),
        'email':_emailcontroler.text.trim(),
        'password':_passwordcontroler.text.trim(),
      });
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content:Text('Register Succsfully')),
      );
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text('Sorry try again')),
      );

    }
  }

final _form= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Singup'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Form(
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                    CustomTextField(
                controller: _namecontroler,
                label: 'name',
                obscureText: false,
                  validator: (p0) {
                  if(p0!.isEmpty){
                    return 'enter name';
                  }
                  return null;
                  
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _emailcontroler,
                label: 'email',
                obscureText: false,
                validator: (p0) {
                  if(p0!.isEmpty){
                    return 'enter email';
                  }
                  else if(!(p0.contains('@'))){

                    return 'enter valid email';
                  }

                  return null;
                  
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _passwordcontroler,
                label: 'Password',
                obscureText: true,
                  validator: (p0) {
                  if(p0!.isEmpty){
                    return 'enter password';
                  }else if(!(p0.length >= 8 && p0.length <=12)){
                    return 'max 12 min 8';
                  }
                  return null;
                  
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                if(_form.currentState!.validate()){
                  singupdata(context);

                }
              }, child: Text('submit')),
                            TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
