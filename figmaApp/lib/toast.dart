import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Amir extends StatefulWidget {
  const Amir({super.key});

  @override
  State<Amir> createState() => _AmirState();
}

class _AmirState extends State<Amir> {
  show(text,color,bgcolor){
      Fluttertoast.showToast(msg: text,
        gravity: ToastGravity.BOTTOM,
        backgroundColor:bgcolor,
        textColor: color,
        fontSize: 16.0,
      );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: (){
                show('click',Colors.pink,Colors.yellow);
              },
              child: Text('Click'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                show('Submit',Colors.black,Colors.grey);
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),

    );
  }
}
