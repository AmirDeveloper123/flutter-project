import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Fetechdata extends StatelessWidget {
  const Fetechdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('fech data'),
        centerTitle: true,
      ),
      body: StreamBuilder(stream:FirebaseFirestore.instance.collection('information').snapshots(),
      builder: (context,snap){
        return
          ListView.builder(
            itemCount: snap.data!.docs.length,
            itemBuilder: (context,index){
          
          return Column(
            children: [
              Text('${snap.data!.docs[index]['name']}'),
              Text('${snap.data!.docs[index]['fname']}')
              
            ],
          );
        }
        );
      }
      )
    );
  }
}
