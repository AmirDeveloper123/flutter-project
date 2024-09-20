
import 'package:appimage/screen_view/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

import '../controler_provider/likepage_provider.dart';
class Likepage extends StatelessWidget {
   Likepage({super.key});
   var textFieldController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final listdata=Provider.of<Likepage_provider>(context);

    print(listdata.userdata);
    return Scaffold(
      appBar: AppBar(
      ),

      body: Column(
        children: [
          Expanded(
            child: Consumer<Likepage_provider>(builder: (context, value, child) =>
              ListView.builder(
                itemCount: value.userdata.length,
                itemBuilder:(context, index){
                  return ListTile(title: Text(value.userdata[index]),
                  trailing: SizedBox(width: 100,  child: Row(children: [
                    IconButton(onPressed: (){
                      print(index);
                      value.editData.text=value.userdata[index];
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('Enter Your Name'),
                            content: TextField(
                            controller: value.editData,
                            decoration: InputDecoration(hintText: "Update name"),
                            ),
                              actions: [
                                ElevatedButton(onPressed: (){


                                  // print(index);
                                  value.updatedata(index);
                                  Navigator.pop(context);
                                }, child: Text('submit'))
                              ],
                                );
                          });
                    }, icon: Icon(Icons.edit,color: Colors.green,)),


                    // deleTe datA  CODE
                    IconButton(onPressed: (){
                      value.deletedata(value.userdata[index]);
                    }, icon: Icon(Icons.delete,color: Colors.red,)),

                  ],)),

                  );
                }
            
            
                )
            
              ),
          ),
        ],
      )

        );


  }
}
