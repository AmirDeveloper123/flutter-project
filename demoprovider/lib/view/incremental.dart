import 'package:demoprovider/controller/increment_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementView extends StatefulWidget {
  const IncrementView({super.key});

  @override
  State<IncrementView> createState() => _IncrementViewState();
}

class _IncrementViewState extends State<IncrementView> {

  int count=0;
  @override
  Widget build(BuildContext context) {
    final incrementController= Provider.of<IncrementController>(context,listen: false);
    print('build ');
    return Scaffold(
      appBar: AppBar(
        title: Text('increment'),
        
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<IncrementController>(builder: (context, value, child) => Text(value.count.toString()),),
            ElevatedButton(onPressed: (){
        incrementController.increment();
     
        print(count);
            }, child: Text('increment'))
          ],
        ),
      ),
    );
  }
}