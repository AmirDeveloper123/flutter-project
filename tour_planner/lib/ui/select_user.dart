import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tour_planner/models/model.dart';
class Select_user extends StatelessWidget {
   Select_user({super.key});
  void usertype(String usertype)async{
    print(usertype);
    try{
   Detail user=Detail(
     usertype: usertype.trim(),

   );
   FirebaseFirestore.instance.collection('usertype').add(user.toJson());
   print('data submitted');
       }
    catch(e){
      print('data not subminted$e');

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: (){
                usertype('admin');
              },
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Center(child: Text('Admin')),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                usertype('user');
              },
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Center(child: Text('User')),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
