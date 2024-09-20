import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Slideri extends StatefulWidget {

   Slideri({super.key});

  @override
  State<Slideri> createState() => _SlideriState();
}

class _SlideriState extends State<Slideri> {
  var _width = 200.0;
  var _height = 100.0;
  var flag=false;
  Color color=Colors.grey;

  RangeValues _currentRangeValues = const RangeValues(20, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 30),
        title: Text('Slider Image'),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CarouselSlider(
                items:[
               Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=1024x1024&w=is&k=20&c=iX0adGZVKv9wS5yrs0-hpFsJBnRAacZa1DcDZ0I9Bqk='),fit: BoxFit.cover)
                ),
              ) ,
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1305462732/photo/headshot-studio-portrait-of-a-woman-in-profile-looking-at-the-camera.webp?b=1&s=170667a&w=0&k=20&c=0AXRV3wA2u6gi3ccQcnQ4ISs7m-WMk3icBA6IlLwH34='),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.webp?b=1&s=170667a&w=0&k=20&c=FycdXoKn5StpYCKJ7PdkyJo9G5wfNgmSLBWk3dI35Zw='),fit: BoxFit.cover)
                    ),
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 2 / 2,
                )),
          ),
          RangeSlider(
            activeColor: Colors.red,
              inactiveColor: Colors.yellow,
              min: 0,
              max: 100,
              values:  _currentRangeValues,
              onChanged: (value){
                setState(() {
                  _currentRangeValues = value;
                });
              }
              ),
          AnimatedContainer(duration: Duration(seconds: 1),
            curve: Curves.easeOutSine,
            width: _width,
            height: _height,
            color: color,

          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              if(flag){
                _width=100;
                _height=200;
                color=Colors.green;
                flag=false;
              }else{
                color=Colors.cyan;
                _width=200;
                _height=100;
                flag=true;
              }


            });

          }, child:Text('click'),
          ),
        ],
      ),
    );
  }
}
