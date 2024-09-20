import 'package:flutter/material.dart';

class IncrementController extends ChangeNotifier{

  int count =0;

  void increment(){
    print('coutn   $count');
    count++;
    notifyListeners();
  }

}