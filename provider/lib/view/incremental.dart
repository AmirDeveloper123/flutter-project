import 'package:flutter/material.dart';

class IncrementView extends StatefulWidget {
  const IncrementView({super.key});

  @override
  State<IncrementView> createState() => _IncrementViewState();
}

class _IncrementViewState extends State<IncrementView> {

  int count=0;
  @override
  Widget build(BuildContext context) {
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
            Text(count.toString()),
            ElevatedButton(onPressed: (){
        count++;
        setState(() {
          
        });
        print(count);
            }, child: Text('increment'))
          ],
        ),
      ),
    );
  }
}