import 'package:figmaapp/database/productdatabase.dart';
import 'package:flutter/material.dart';
class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Catogeries'),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
          ],
          bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              labelStyle: TextStyle(fontSize: 22),
              labelColor: Colors.black,

              tabs: [

            Text('Women'),
            Text('Men'),
            Text('Kids'),

          ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 425,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red
          
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('SUMMER SALE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                      Text('Up to 50% off',style: TextStyle(color: Colors.white,fontSize: 15),),
                    ],
                  )
                ),
              ),
          
              Container(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                   itemCount: Productdata().datalist.length,
                    itemBuilder: (context,index){

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.10),
                                spreadRadius: 3,

                                offset: Offset(0, 3),
                            )
                          ],
                        ),
                        width: 400,
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              width: 195,
                              height: double.infinity,
                              child: Center(child: Text(Productdata().datalist[index].productName,style: TextStyle(fontWeight: FontWeight.bold),)),
                            ),
                            Container(
                              width: 205,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),

                                image: DecorationImage(image: NetworkImage(Productdata().datalist[index].productImage),fit: BoxFit.cover)
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ],
                )  ;

                }
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
