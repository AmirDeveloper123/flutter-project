import 'package:demohome/controller/themeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class themepage extends StatelessWidget {
  const themepage({super.key});

  @override
  Widget build(BuildContext context) {
    final data =Provider.of<ThemeController>(context,listen: false);
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          data.settheme();
        }, child: Text('change')),
      ),
    );
  }
}