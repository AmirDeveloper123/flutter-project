import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/utils/theme/theme.dart';

class ThemeController with  ChangeNotifier{

  ThemeData theme=lighttheme;
    

    void setLighttheme(){
    
        theme=lighttheme;   
notifyListeners();
    }
    void setdarktheme(){
        theme=darktheme;
notifyListeners();

    }
}