import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Updatedata extends StatelessWidget {
  Updatedata({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update data'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream:FirebaseFirestore.instance.collection('userdata').snapshots(),
      builder: (context,snapshot){
          var docs=snapshot.data!.docs;
          return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context,index){
                var doc=docs[index];
                TextEditingController username=TextEditingController(text: doc['userName']);
            return ListTile(
              title: Text(doc['userName']),
              leading: IconButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder:(context){
                        return AlertDialog(
                          title: Text('Edit your data'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: username,
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);

                            }, child: Text('cancel')),
                            TextButton(onPressed: (){
                              FirebaseFirestore.instance.collection('userdata').doc(doc.id).update(
                                  {
                                    'userName':username.text,
                                  }).then((_) {
                                    Navigator.pop(context);
                              });
                            }, child: Text('Save')),

                          ],
                        );

                      });
                },
                  icon: Icon(Icons.more_vert),

              ),
            );

          });
      },
      ),
    );
  }
}
