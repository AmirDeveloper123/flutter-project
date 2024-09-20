import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewData extends StatelessWidget {
  const ViewData({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Car products').snapshots(),
          builder: (context, snapshot) {
            List<DocumentSnapshot> doc = snapshot.data!.docs;
            return ListView.builder(
              itemCount: doc.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = doc[index].data() as Map<String, dynamic>;
                return Column(
                  children: [
                    Text(data['name']),
                    SizedBox(height: 30,),
                    Text('Address : ${data['address']}'),
                    Text(data['mobile'])
                  ],
                );
            },);
          },
      )
    );
  }
}
