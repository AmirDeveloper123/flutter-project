import 'package:crudeapp/compontes/customtextfield.dart';
import 'package:crudeapp/controler/crudapp_controler.dart';
import 'package:crudeapp/model/datamodel.dart';
import 'package:crudeapp/screen/cart_view.dart';
import 'package:crudeapp/screen/creatdata.dart';
import 'package:crudeapp/screen/editscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Home_page extends StatelessWidget {
  // final Productmodel productmodel;
   Home_page({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Consumer<Crudapp_controler>( builder: (context, value, child) =>  ListView.builder(
        itemCount: value.productlist.length,
          itemBuilder: (context, index) =>
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:ListTile(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context) => CardView(productmodel: value.productlist[index]),
                ));
              },

          //  leading: CircleAvatar(
          //       backgroundImage,
          // ),
              title:Text(value.productlist[index].name),
            subtitle: Text(value.productlist[index].descpration),
              trailing:IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Editscreen(modelviwe: value.productlist[index],index: index,)));



              }, icon: Icon(Icons.edit ,
              // trailing: Row(
              //   children: [
              //     IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
              //     SizedBox(width: 20,),
              //
              //     )),
              //   ],
              // ),
            )
          )



                 )

      ),
           ),
           ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Creat_product(),));

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
