// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class Showdata extends StatelessWidget {
//   const Showdata({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('show data'),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: StreamBuilder(
//           stream: FirebaseFirestore.instance.collection('userdata').snapshots(),
//           builder: (context, snapshot) {
//             return ListView.builder(
//                 itemCount: snapshot.data!.docs.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Text(
//                         snapshot.data!.docs[index]['userName'],
//                       ),
//                       Text(
//                         snapshot.data!.docs[index]['email'],
//                       ),
//                       ListTile(
//                        trailing: IconButton(onPressed: (){},icon:Icon(Icons.more_vert),
//                         ),
//                         title: Text(snapshot.data!.docs
//                         [index]['userName']),
//                       )
//                     ],
//                   );
//                 });
//           }),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Showdata extends StatelessWidget {
  var emaill;
  var password;
   Showdata({super.key,required this.emaill,required this.password});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('userdata').
        where('email',isEqualTo: emaill).
        where('password',isEqualTo: password).snapshots(),
        builder: (context, snapshot) {

          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }

          var docs=snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              var doc = docs[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [
                        Text(doc['email']),
                        Spacer(),
                        IconButton(onPressed: (){
                          deltedata(context,doc.id);
                        }, icon:Icon(Icons.delete))
                      ],
                    ),
                    Text(doc['userName']),
                    Text(doc['password']),
                    ElevatedButton(onPressed: (){
                      editdata(context,doc.id,doc['email'],doc['userName'],doc['password']);
                    }, child:Text('Edit date')),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

void editdata(BuildContext context, String docid, String curentemail,String currentusername,String currentpassword){
  TextEditingController emailcontroler=TextEditingController(text: curentemail);
  TextEditingController passwordcontroler=TextEditingController(text: currentpassword);
      TextEditingController usernamecontroler=TextEditingController(text: currentusername);
showDialog(context: context,
    builder: (BuildContext context){
  return AlertDialog(
title: Text('Edit data'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: emailcontroler,
          decoration: InputDecoration(
            label: Text('Email'),
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: passwordcontroler,
          decoration: InputDecoration(
            label: Text('password'),
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller:  usernamecontroler,
          decoration: InputDecoration(
            label: Text('userName'),
          ),
        ),
        SizedBox(height: 10,),

      ],
    ),
actions: [
  TextButton(onPressed: (){
    Navigator.pop(context);
  }, child: Text('Cancel')),
  ElevatedButton(onPressed: (){
    FirebaseFirestore.instance.collection('userdata').doc(docid).update(

      {
        'email':emailcontroler.text.trim(),
        'password':passwordcontroler.text.trim(),
        'userName':usernamecontroler.text.trim(),
      }
    ).then((e) => {
      Navigator.pop(context)

    });


  }, child: Text('save'))
],

  );
    }
    );

}
Future<void>deltedata(BuildContext context,String docid)async{
  showDialog(context: context,
      builder: (BuildContext context){
    return AlertDialog(
      title: Text('confirmation delte daata'),
      content: Text('do you want delet data'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('No')),
        ElevatedButton(onPressed: (){
          try {
            FirebaseFirestore.instance.collection('userdata').doc(docid).delete().then((value) => {Navigator.pop(context)});
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('User deleted successfully') ) );
          }catch(e){
            print('not delte dar');
          }

          }, child:Text('Yes')),
      ],
    );

  }
  );
}