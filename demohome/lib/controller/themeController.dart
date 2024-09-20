import 'package:demohome/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier{

  ThemeData currenttheme=ligththeme;

  void settheme(){
    if(currenttheme==ligththeme){
      currenttheme=darktheme;
    }else{
            currenttheme=ligththeme;

    }
notifyListeners();
  }


}