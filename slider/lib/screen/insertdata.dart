import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Insertdata extends StatelessWidget {
   Insertdata({super.key});
  TextEditingController product_name=TextEditingController();
  TextEditingController  protect_prize=TextEditingController();
  TextEditingController mobile_nb=TextEditingController();
  TextEditingController product_quantity=TextEditingController();
  TextEditingController city=TextEditingController();
  TextEditingController adress=TextEditingController();
  TextEditingController email=TextEditingController();
  void insertingdata()async{
    var name =product_name.text.trim();
    var prize=protect_prize.text.trim();
    var mobile=mobile_nb.text.trim();
    var quntity=product_quantity.text.trim();
    var cityy= city.text.trim();
    var address=adress.text.trim();
    var emaill=email.text.trim();
    await FirebaseFirestore.instance.collection('Car products').add(
      {
        'name':name,
        'prize':prize,
        'mobile':mobile,
        'quntity':quntity,
        'city':cityy,
        'address':address,
        'emaill':emaill,
      }


    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('insertdata'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: product_name,
                decoration: InputDecoration(
                  hintText: 'product Name',
                  border: OutlineInputBorder(),
                ),
          
              ),
              SizedBox(height: 10,),
              TextField(
                controller: protect_prize,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'product Prize',
                  border: OutlineInputBorder(),
                ),
          
              ),
              SizedBox(height: 10,),
              TextField(
                controller: mobile_nb,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'mobile number',
                  border: OutlineInputBorder(),
                ),
          
              ),
              SizedBox(height: 10,),
              TextField(
                controller: product_quantity,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'product Quntity',
                  border: OutlineInputBorder(),
                ),
          
              ),
              SizedBox(height: 10,),
              TextField(
                controller: city,
                decoration: InputDecoration(
                  hintText: 'city',
                  border: OutlineInputBorder(),
                ),
          
              ),
              SizedBox(height: 10,),
              TextField(
                controller: adress,
                decoration: InputDecoration(
                  hintText: 'Adress',
                  border: OutlineInputBorder(),
                ),
          
              ),
              SizedBox(height: 10,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
          
              ),
              SizedBox(height: 20,),
              Container(
                width: 300,
                child: ElevatedButton(onPressed: (){
                  insertingdata();
                },child: Text('Submit'),) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
