import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_planner/custom_wedgets/custom_Textfield.dart';
import 'package:tour_planner/custom_wedgets/custom_button.dart';
import 'package:tour_planner/ui/mainpage.dart';
class Sinup_page extends StatelessWidget {
  Sinup_page({super.key});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController birthcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                height: 130,
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/b9e0/81e2/dec2cab9bda44aa3a2ec55e8ea7d712d?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FUHyZJOj7CAGakzY9qxg9yyXl44FjmYdt4wbKLZhzLkjAEYBrakOphMdkMhDYTzzO0jkvaUrrkzqSfXhS-jRYotDsI~dbtbo59Yfu4yiO105ogSiLt9LY0TJp5PJA~WfjvwTJRS3bKELVhZKWxsnTOXqudSFwQycDHrFKDvfGAIR00R9AjL4ahjsIF9LjIHJefTj0H5PKz-RpsYfXOCLgZFNvbTa31VNgVbMETcSH4KdVqAmxvcjy9RB8P40mqEkvT353IrqijG6CLvRbZjojnXbr0pCBkTwscJ3uIbM92FD3adzVrlnbq66zlGbV-8Z993CZ1Fkur7g2heW9rx5WQ__',
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sing up',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Sing up to enjoy the feature of Revolutie',
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                height: 20,
              ),
              Custom_textfield(labaltext: 'Your Name', controller: namecontroller,),
              SizedBox(
                height: 10,
              ),


              Custom_textfield(
                press: (){},
                labaltext: 'Date of Birth',
                controller: birthcontroller,
                surfixcon: Icon(Icons.date_range),

              ),
              SizedBox(
                height: 10,
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
              SizedBox(
                height: 20,
              ),
              Custom_button(
                buttonaction: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Mainpage(),));
                },
                buttonname: 'Sign Up',
                buttoncolor: Colors.blueAccent,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Text(
                    'or',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              SizedBox(height: 10),
              Custom_button(
                buttonaction: () {},
                buttonname: 'Continue with google',
                buttoncolor: Colors.white
                ,
                icon: FontAwesomeIcons.google,
                style: TextStyle(color: Colors.black,
                fontSize: 20,

                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),

    );
  }
}
