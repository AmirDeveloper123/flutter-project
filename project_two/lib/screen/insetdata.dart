import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Insertdata extends StatelessWidget {
   Insertdata({super.key,});
  TextEditingController name=TextEditingController();
  TextEditingController fname=TextEditingController();
  TextEditingController mobile_nb=TextEditingController();
  TextEditingController adress=TextEditingController();
  void insertdata()async{
    var namee=name.text.trim();
    var father=fname.text.trim();
    var mb=mobile_nb.text.trim();
    var ad=adress.text.trim();
    await FirebaseFirestore.instance.collection('Detail').add({
      'name':namee,
      'fname':father,
      'mobile_nb':mb,
      'adress':ad,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inserting Data'),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller:fname,
              decoration: InputDecoration(
                  hintText: 'Father name',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller:mobile_nb,
              decoration: InputDecoration(
                  hintText: 'Mobile number',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller:adress,
              decoration: InputDecoration(
                  hintText: 'adress',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){insertdata();}, child: Text('login'))
          ],
        ),
      ),
    );
  }
}
