import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tour_planner/custom_wedgets/custom_button.dart';
import 'package:tour_planner/database/databsedata.dart';
import 'package:tour_planner/models/model.dart';
import 'package:tour_planner/models/model.dart';
import 'package:tour_planner/ui/profile.dart';
import 'package:tour_planner/ui/searchpage.dart';
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title:Image.network('https://s3-alpha-sig.figma.com/img/97fb/6d43/b5330ebdab88c31ffbe3853bffced4e5?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kim01NZ39VD8j7pQDPOU6xQIYFZblySR5Per8V04vO5W3WHBJmpS5na0csBTiBoHuebV0Nb1VPzSgc0ZvbYT8H-jttzCe55HMjsX9BX~wvRuvT9tuvgElqQPWqnPzAkE~Iq9WeHFUhlrNBFRDDx7bUJKc4osx69c8S2XY-JxL~1b4Q5rGF3HSu6xWUSFtV4xLC5mV8Db00SmCX7NwEIB-u2~WV6-rKPr9~yg6uBWsXuwW77fZno8ueuGUekWVB-ervNdj4-o3Apidyw-6lkh8dWhFLcpf4jsLCkClWKZZq1dwPOjid6Y6qxBEUqBgulzlt3RyN99KbWMbguQYyHy4Q__',height: 70,),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Material(
                elevation: 6.0, // Elevation for shadow effect
                shape: CircleBorder(), // Circular shape for the avatar
                child: CircleAvatar(
                  radius: 20, // Size of the avatar
                  backgroundColor: Colors.white, // Background color of the avatar
                  child: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black, // Icon color
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Search_page(),));
                    },
                  ),
                ),
              ),
            ),
            SizedBox(width: 15,),
          ],
        ),
      ),
      drawer: Drawer(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 60,),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile_page (),));
                },
                leading:CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,size: 40,),
                ),
                title: Text('Amir Ali'),
                subtitle: Text('amir123@gmail.com'),
              ),
              SizedBox(height: 20,),
              ListTile(
                onTap: (){},
                leading:Icon(Icons.place,size: 40,),
                title: Text('List of trip placeses'),
              ),
              SizedBox(height: 10,),
              ListTile(
                onTap: (){},
                leading:Icon(Icons.support,size: 40,),
                title: Text('Customer support'),
              ),
              SizedBox(height: 10,),
              ListTile(
                onTap: (){},
                leading:Icon(Icons.place,size: 40,),
                title: Text('Terms and Condition'),
              ),
              SizedBox(height: 10,),
              ListTile(
                onTap: (){},
                leading:Icon(Icons.privacy_tip,size: 40,),
                title: Text('Privcy and Polocy'),
              ),
              SizedBox(height: 350,),
              Container(
                width:double.infinity,
                height: 50,
                decoration: BoxDecoration(
                ),child:  Custom_button(buttonaction: (){}, buttonname: 'Logout', buttoncolor:Colors.blueAccent,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ) ),
              )

            ],
          ),
        ),

      ),
      body:  SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  items:[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1489516408517-0c0a15662682?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZHViYWl8ZW58MHx8MHx8fDA%3D'),fit: BoxFit.cover)
                      ),
                        
                    ) ,
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: NetworkImage('https://images.unsplash.com/flagged/photo-1559717201-fbb671ff56b7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGR1YmFpfGVufDB8fDB8fHww'),fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1992378191/photo/happy-middle-eastern-woman-contemplating-scenic-view-of-dubai-downtown-cityscape.webp?b=1&s=170667a&w=0&k=20&c=X824NRI981Otx4dk16AS7UDC1u_vAN4dsgaktz1ICbQ='),fit: BoxFit.cover)
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                  ),
                        
                ),
              ),
            ]
        ),
      ),

    );
  }
}
