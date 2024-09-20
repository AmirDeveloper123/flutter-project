import 'package:demohome/controller/favourate_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FvList extends StatelessWidget {
  const FvList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FavoirateController>(
          builder: (context, value, child) => ListView.builder(
            itemCount: value.fvdata.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(value.fvdata[index]),
                  trailing: IconButton(onPressed: (){
                    value.fvRemove(index);
                  },icon: Icon(Icons.delete),),
                ),
              )),
    );
  }
}
