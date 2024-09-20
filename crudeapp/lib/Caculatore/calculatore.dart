import 'package:flutter/material.dart';

import '../compontes/cutombuton.dart';
import 'package:math_expressions/math_expressions.dart';
class Calculatore extends StatefulWidget {

  Calculatore({super.key,});

  @override
  State<Calculatore> createState() => _CalculatoreState();
}

class _CalculatoreState extends State<Calculatore> {
  TextEditingController textt=TextEditingController();
  var result;
  void calculate() {
    setState(() {
      try {
        Parser parser = Parser();
        Expression exp = parser.parse(textt.text);
        ContextModel cm = ContextModel();
        result = exp.evaluate(EvaluationType.REAL, cm).toString();
        textt.clear();
        textt.text=result;
      } catch (e) {
        result;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Calculatore',style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,
    ),
    body: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [],
      ),
    ),

         );
  }
}
