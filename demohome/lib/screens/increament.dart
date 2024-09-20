import 'package:demohome/controller/countprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementPage extends StatelessWidget {
  const IncrementPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('builda');
    final data=Provider.of<Countprovider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('increment'),),
      body: Column(children: [
        Consumer<Countprovider>(builder: (context, value, child) =>  Text(value.count.toString()),),

       

        ElevatedButton(onPressed: (){
data.setCount();

        }, child:const Text('increment'))

      ],),
    );
  }
}