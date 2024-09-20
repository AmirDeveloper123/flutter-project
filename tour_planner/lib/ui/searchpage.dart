import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Search_page extends StatelessWidget {
  const Search_page({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 45,
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search desitination',
              contentPadding: EdgeInsets.only(top: 10),

              labelStyle: TextStyle(
              ),
              fillColor: Colors.grey.shade300,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Search Near me',style: TextStyle(fontSize: 20,color: Colors.black54),),
            SizedBox(height: 20,),
            SizedBox(
              width:  size.width<500 ? size.width : size.width/2,
              child: Row(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
              
                 CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: SvgPicture.string('<svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="hospital" data-name="Line Color" xmlns="http://www.w3.org/2000/svg" class="icon line-color"><path id="secondary" d="M9,7v4m2-2H7m4,6H7v6h4Z" style="fill: none; stroke: rgb(44, 169, 188); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path><path id="primary" d="M15,4a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,0a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,17h6V7a1,1,0,0,0-1-1H15Zm0,0h6V7a1,1,0,0,0-1-1H15Z" style="fill: none; stroke: rgb(0, 0, 0); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path></svg>',color: Colors.white,)),
              
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: SvgPicture.string('<svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="hospital" data-name="Line Color" xmlns="http://www.w3.org/2000/svg" class="icon line-color"><path id="secondary" d="M9,7v4m2-2H7m4,6H7v6h4Z" style="fill: none; stroke: rgb(44, 169, 188); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path><path id="primary" d="M15,4a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,0a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,17h6V7a1,1,0,0,0-1-1H15Zm0,0h6V7a1,1,0,0,0-1-1H15Z" style="fill: none; stroke: rgb(0, 0, 0); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path></svg>',color: Colors.white,)),
              
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: SvgPicture.network('<svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="hospital" data-name="Line Color" xmlns="http://www.w3.org/2000/svg" class="icon line-color"><path id="secondary" d="M9,7v4m2-2H7m4,6H7v6h4Z" style="fill: none; stroke: rgb(44, 169, 188); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path><path id="primary" d="M15,4a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,0a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,17h6V7a1,1,0,0,0-1-1H15Zm0,0h6V7a1,1,0,0,0-1-1H15Z" style="fill: none; stroke: rgb(0, 0, 0); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path></svg>',color: Colors.white,)),
              
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: SvgPicture.string('<svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="hospital" data-name="Line Color" xmlns="http://www.w3.org/2000/svg" class="icon line-color"><path id="secondary" d="M9,7v4m2-2H7m4,6H7v6h4Z" style="fill: none; stroke: rgb(44, 169, 188); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path><path id="primary" d="M15,4a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,0a1,1,0,0,0-1-1H4A1,1,0,0,0,3,4V21H15Zm0,17h6V7a1,1,0,0,0-1-1H15Zm0,0h6V7a1,1,0,0,0-1-1H15Z" style="fill: none; stroke: rgb(0, 0, 0); stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path></svg>',color: Colors.white,)),
              
              
              
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
