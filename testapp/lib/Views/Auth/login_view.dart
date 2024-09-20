
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testapp/Views/Auth/register_view.dart';
import 'package:testapp/Views/home_view.dart';
import 'package:testapp/res/components/custom_text_fiedl.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});
  TextEditingController _emailcontroler = TextEditingController();
  TextEditingController _passwordcontroler = TextEditingController();

  Future<void> login(BuildContext context)async{
    final email=_emailcontroler.text.trim();
    final password=_passwordcontroler.text.trim();
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );

  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeView()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    debugPrint('No user found for that email.');
  } else if (e.code == 'invalid-credential') {
    debugPrint('Wrong password provided for that user.');
  }else{
    print(e.code);
  }
}

    
  }

  final _form= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Form(
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  login(context);
                }
              }, child: Text('submit')),

              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterView()));
              }, child: Text('Sign Up'))
            ],
          ),
        ),
      ),
    );
  }
}
