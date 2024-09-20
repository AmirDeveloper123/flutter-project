import 'package:flutter/material.dart';
class Mobilebody extends StatelessWidget {
   Mobilebody({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text('Mobile'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Open the end drawer
              // Scaffold.of(context).openEndDrawer();
              // Scaffold.of(context).openEndDrawer();
              _scaffoldKey.currentState!.openEndDrawer();

            },
          ),
        ],
      ),
      endDrawer:Container(
        height: 200,
        child: Drawer(



        ),
           ),




      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // youtue videoo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Container(
                  height:250,
                  color: Colors.red,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(

                  itemCount: 10,
                  itemBuilder: (context,index){

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:120,
                    color: Colors.green
                  ),
                );

              }),
            )

          ],
        ),
      ),
    );
  }
}
