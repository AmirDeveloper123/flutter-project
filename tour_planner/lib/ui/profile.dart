import 'package:flutter/material.dart';
import 'package:tour_planner/custom_wedgets/custom_Textfield.dart';
import 'package:tour_planner/custom_wedgets/custom_button.dart';
class Profile_page extends StatelessWidget {
   Profile_page({super.key});
  TextEditingController nameconrroler=TextEditingController();
   TextEditingController emailconrroler=TextEditingController();
   TextEditingController passwordconrroler=TextEditingController();
   TextEditingController brithconrroler=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eidt Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                  CircleAvatar(
                    radius: 80,
                    child: Icon(Icons.person_outline_sharp,size: 100,),
                  ),
                    Positioned(
                      left: 110,
                      top: 120,
                      child: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined,size: 30,)))
          
          
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Custom_textfield(labaltext: 'Name', controller: nameconrroler,),
              SizedBox(height: 30,),
              Custom_textfield(labaltext: 'Email', controller: emailconrroler,),
              SizedBox(height: 30,),
              Custom_textfield(labaltext: 'Password', controller: passwordconrroler,),
              SizedBox(height: 30,),
              Custom_textfield(labaltext: 'Birth Day', controller: nameconrroler,),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Custom_button(buttonaction: (){}, buttonname: 'Save', buttoncolor:Colors.blueAccent,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              )
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
