import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Insertdata extends StatelessWidget {
  Insertdata({super.key});
  TextEditingController name=TextEditingController();
  TextEditingController fathername=TextEditingController();


  void insertdata()async{
    var namee=name.text.trim();
    var fathern=fathername.text.trim();
    await FirebaseFirestore.instance.collection('information').add({
      'name':namee,
      'fname':fathern,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert data'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
              label: Text('name'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: fathername,
            decoration: InputDecoration(
              label: Text('father name'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            insertdata();

          }, child: Text('Submit'))
        ],
      ),
    );
  }
}
