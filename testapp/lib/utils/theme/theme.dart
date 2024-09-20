import 'package:flutter/material.dart';
import 'package:testapp/res/const/app_colors.dart';

ThemeData lighttheme= ThemeData(
  scaffoldBackgroundColor: appColors.white,
  colorScheme: ColorScheme.light(
    background: appColors.white
  )

  
);

ThemeData darktheme= ThemeData(
  scaffoldBackgroundColor:appColors.black,
  colorScheme: ColorScheme.dark(
    background: appColors.black
  )

  
);