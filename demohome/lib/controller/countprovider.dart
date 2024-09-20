import 'package:flutter/cupertino.dart';

class Countprovider with ChangeNotifier{

  int count=0;

  void setCount(){
    count++;
    print(count);

    notifyListeners(); // setState

  }


}