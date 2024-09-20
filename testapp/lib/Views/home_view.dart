import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/Controllers/services/theme_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
  final  theme =Provider.of<ThemeController>(context,listen: false);

    return Scaffold(
      appBar: AppBar(title: Text('Home PAge'),),

      body: Column(children: [
        ElevatedButton(onPressed: (){
          theme.setLighttheme();
       
        }, child: Text('light theme')),
        ElevatedButton(onPressed: (){
          theme.setdarktheme();

        }, child: Text('dart theme')),

      ],),
    );
  }
}