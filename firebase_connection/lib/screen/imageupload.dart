// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 150,
//             width: 300,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadiusDirectional.circular(12),
//               color: Colors.green
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;
  final picker = ImagePicker();
  //
  Future<void> pickImage()async{
    final pickedImage = await picker.pickImage(source: ImageSource.camera);
    if(pickedImage != null){
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
  // Future<void> _pickImage() async {
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  // }
  //
  Future<void> _uploadImage() async {
    if (_image == null) return;
    try {
      // Firebase Storage mein image upload karein
      final storageRef = FirebaseStorage.instance.ref();
      final imageRef = storageRef.child('images/${DateTime.now().millisecondsSinceEpoch}.png');
      await imageRef.putFile(_image!);
      // Image URL ko Firestore mein save karein
      final imageUrl = await imageRef.getDownloadURL();
      await FirebaseFirestore.instance.collection('images').add({'url': imageUrl});
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Image Uploaded Successfully!')));
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Image Upload Failed')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Firebase Image Upload')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? Text('No image selected.')
                : Image.file(_image!),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                pickImage();
              },
              child: Text('Pick Image'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                _uploadImage();
              },
              child: Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
