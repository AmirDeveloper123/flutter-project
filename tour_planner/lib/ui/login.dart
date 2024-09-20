import 'package:flutter/material.dart';
import 'package:tour_planner/custom_wedgets/custom_Textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_planner/custom_wedgets/custom_button.dart';
import 'package:tour_planner/ui/signup.dart';
class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              size.width < 500 ?
             Column(children: [
               SizedBox(
                height: 130,
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/sacre-coeur-cathedral-paris-france-panoramic-imaage-spring-flowers-garden-front-94274859.jpg',
                        ),
                        fit: BoxFit.cover)),
              )
             ],)
             :Container(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sign in',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'please login to continue your account',
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                height: 20,
              ),
              Custom_textfield(labaltext: 'Email', controller: emailcontroller),
              SizedBox(
                height: 10,
              ),
              Custom_textfield(
                labaltext: 'Password',
                controller: passwordcontroller,
                surfixcon: Icon(Icons.remove_red_eye),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              Custom_button(
                buttonaction: () {
                  
                },
                buttonname: 'Sign in',
                buttoncolor: Colors.blueAccent,
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                'or',
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
              Custom_button(
                buttonaction: () {},
                buttonname: 'Sign with google',
                buttoncolor: Colors.white
                ,
                icon: FontAwesomeIcons.google,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Need an account?'),
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blueAccent,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sinup_page(),));
                      },
                      child: Text(
                        'Create one',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blueAccent,
                          decorationThickness: 2,

                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
