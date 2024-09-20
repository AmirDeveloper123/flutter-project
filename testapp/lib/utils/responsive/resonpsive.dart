import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  Widget isMobile;
  Widget isTablet;
  Widget isDesktop;
   ResponsiveBuilder({super.key,required this.isMobile,required this.isTablet,required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < 600){
        return isMobile;        
      }else if(constraints.maxWidth < 1100){
        return isTablet;        
      }else{
        return isDesktop;
      }
    },);
  }
}