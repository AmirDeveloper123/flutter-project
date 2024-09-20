import 'package:demohome/controller/favourate_controller.dart';
import 'package:demohome/screens/like.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoiratePage extends StatelessWidget {
  const FavoiratePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('favoirate'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>FvList()));
          }, icon: Icon(Icons.add))
        ],
      ),
      body: Consumer<FavoirateController>(builder:(context, value, child) => 
         ListView.builder(
          itemCount: value.data.length,
          itemBuilder: (context, index) {
            // print(value.data);
            return ListTile(
            title: Text(value.data[index]),
            trailing: IconButton(onPressed: (){
              print(value.data[index]);
              if(!(value.fvdata.contains(value.data[index]))){
                 value.setFvData(value.data[index]);
              }
            }, icon: Icon(Icons.add)),
          );}
        ),
      ),
    );
  }
}
