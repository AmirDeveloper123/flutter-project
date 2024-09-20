import 'package:flutter/material.dart';
class Desktopbody extends StatelessWidget {
  const Desktopbody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('Desktop'),
          centerTitle: true,
          backgroundColor: Colors.grey,
          bottom: TabBar(tabs: [
            Tab(
              text: 'Home',

            ),
            Tab(
              text: 'Contac',

            ),
            Tab(
              text: 'Adress',

            )

          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width*.75,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        // width: MediaQuery.of(context).size.width*.6,
                        child: AspectRatio(aspectRatio: 16/9,
                        child: Card(),
                        ),
                      ),
                      for(int a=0;a<=10;a++)Container( height: 120,

                          width: MediaQuery.of(context).size.width*.75,

                          child: Card())
                    ],),
                  )),
              // Container(
              //   width: MediaQuery.of(context).size.width*.8,
              //   child: Column(
              //     children: [
              //       // youtue videoo
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: AspectRatio(
              //           aspectRatio: 16/9,
              //           child: Container(
              //             height:250,
              //             color: Colors.red,
              //             child: Text(currentheit.toString()),
              //           ),
              //         ),
              //       ),
              //       // Expanded(
              //       //   child:ListView.builder(
              //       //
              //       //       itemCount: 10,
              //       //       itemBuilder: (context,index){
              //       //
              //       //         return Padding(
              //       //           padding: const EdgeInsets.all(8.0),
              //       //           child: Container(
              //       //               height:120,
              //       //               color: Colors.green
              //       //           ),
              //       //         );
              //       //
              //       //       }),
              //       // ),
              //
              //
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width*.18,
                  height:MediaQuery.of(context).size.height ,

                  color: Colors.cyan,

                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) =>Container(
                        height: 50,
                        child: Card()) ,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}