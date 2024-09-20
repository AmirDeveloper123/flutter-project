import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_connection/screen/imageupload.dart';
import 'package:firebase_connection/screen/login.dart';
import 'package:firebase_connection/screen/showdata.dart';
import 'package:firebase_connection/screen/singup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomePage(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//   void signUpWithEmail() async {
//     try {
//       await FirebaseAuth.instance.
//       createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );
//       // If successful, navigate to another page or perform any desired action
//       print('Sign up successful');
//     } catch (e) {
//       print('Error occurred: $e');
//       // Handle or show error message to the user
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Signup with Email'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         children: [
//           const SizedBox(height: 50,),
//           TextField(
//             controller: emailController,
//             decoration: const InputDecoration(
//               hintText: 'Email',
//             ),
//           ),
//           const SizedBox(height: 30,),
//           TextField(
//             controller: passwordController,
//             obscureText: true,
//             decoration: const InputDecoration(
//               hintText: 'Password',
//             ),
//           ),
//           const SizedBox(height: 30,),
//           ElevatedButton(
//             onPressed: () {
//               signUpWithEmail();
//             },
//             child: const Text('Sign Up'),
//           ),
//         ],
//       ),
//     );
//   }
// }
