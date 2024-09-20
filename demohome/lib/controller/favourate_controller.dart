import 'package:flutter/cupertino.dart';

class FavoirateController with ChangeNotifier{

  List data =[
    'abc',
    'abc1',
    'abc2',
    'abc3',
    'abc4',
  ];


  List fvdata=[];

void setFvData(data1){
fvdata.add(data1);
notifyListeners();
  }


  void fvRemove(index){
    fvdata.removeAt(index);
    notifyListeners();
  }
  void update(f){
    data[f];'heee';
  }







}