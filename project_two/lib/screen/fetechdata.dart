import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Fetechdata extends StatelessWidget {
  const Fetechdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View data'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body:StreamBuilder(
          stream:FirebaseFirestore.instance.collection('Detail').snapshots(),
        builder:(context,snap){
        return
          ListView.builder(
              itemCount: snap.data!.docs.length,
              itemBuilder: (context,index){

          return Column(
            children: [
              Text('${snap.data!.docs[index]['name']}',),
              Text('${snap.data!.docs[index]['fname']}'),
              Text('${snap.data!.docs[index]['mobile_nb']}'),
              Text('${snap.data!.docs[index]['adress']}')
              
            ],
          );


        });
        }

      ),


    );
  }
}
