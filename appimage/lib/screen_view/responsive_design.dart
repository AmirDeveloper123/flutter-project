import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Image_picker extends StatefulWidget {
  const Image_picker({super.key});

  @override
  State<Image_picker> createState() => _Image_pickerState();
}
class _Image_pickerState extends State<Image_picker> {
  File? _image;
  final picker=ImagePicker();


   Future<void>setImage()async{
     final pickimgae=await picker.pickImage(source: ImageSource.gallery);
     if(pickimgae !=null){

       setState(() {
         _image=File(pickimgae!.path);
         print('image picked');
       });
     }else{
       print('image not pic');

     }


   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title:Text('Imgae picker'),
      centerTitle: true,
      backgroundColor: Colors.grey,
      ),
      body: Center(
        child:Column(
          children: [
            _image != null
                ? Image.file(
              _image!,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            )
                : Container(
              width: 200,
              height: 200,
              color: Colors.grey[300],
              child: Icon(Icons.image, size: 100, color: Colors.grey),
            ),

          ],
        )
           ),
floatingActionButton: FloatingActionButton(
  onPressed: (){
    setImage();
  },
  child: Icon(Icons.camera_alt_outlined),
),
    );


  }
}
