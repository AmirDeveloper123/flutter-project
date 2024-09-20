import 'package:ecommerce/database/databasee.dart';
import 'package:ecommerce/screen/Addscreen.dart';
import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Ecommerce App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text('Over Car Product',style: TextStyle(fontSize: 40,color: Colors.purple),),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: Datbase().product.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_product(
                            model: Datbase().product[index],
                          )
                          )
                          );

                        },
                        child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.10),
                                blurRadius: 60,
                                spreadRadius: 10,
                                offset: Offset(0, 5))
                          ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width:double.infinity,
                                height: 100,
                                decoration: BoxDecoration(

                                  image: DecorationImage(image: NetworkImage(Datbase().product[index].productImage),fit: BoxFit.fill),
                                ),

                              ),
                              Text(Datbase().product[index].productName),
                              Text(Datbase().product[index].productPrice),


                            ],),

                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      )
    );
  }
}
