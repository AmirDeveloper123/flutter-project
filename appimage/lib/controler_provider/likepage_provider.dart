

import 'package:flutter/cupertino.dart';

class Likepage_provider with ChangeNotifier{
  TextEditingController editData=TextEditingController(text: 'pakistan');
  List userdata=[
    'amir',
    'ali',
    'deedar',
    'ahmed',
    'rashid'];
  
  void deletedata(data1){
    userdata.remove(data1);
    notifyListeners();
  }


  void updatedata(int index ){
 
  userdata[index]=editData.text;


  notifyListeners();

  }

}