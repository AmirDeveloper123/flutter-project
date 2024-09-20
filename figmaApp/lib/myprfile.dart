import 'dart:async';

import 'package:flutter/material.dart';
class Myprofile extends StatelessWidget {
  const Myprofile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Column(
        children: [
          Text('MY Profile',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ListTile(
            leading: CircleAvatar(
              radius:30,
              backgroundImage: NetworkImage('https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?size=626&ext=jpg&ga=GA1.1.1679543681.1711462832&semt=sph'),
            ),
            title: Text('Amir Baloch',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle: Text('amirali22@.gmail.com'),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 70,
            color: Colors.grey.shade50,
              child: ListTile(
                title: Text('My order',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text('Allerday have 12 order'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 70,
              color: Colors.grey.shade50,
              child: ListTile(
                title: Text('Shipping Adress',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text('3 day Shipping'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 70,
              color: Colors.grey.shade50,
              child: ListTile(
                title: Text('Payment Method',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text('Jazzcash/easypesa'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 70,
              color: Colors.grey.shade50,
              child: ListTile(
                title: Text('PromoCodes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text('You have 12 promo codes'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 70,
              color: Colors.grey.shade50,
              child: ListTile(
                title: Text('MY Reiwve',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text('Riewve for 4 items'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 70,
              color: Colors.grey.shade50,
              child: ListTile(
                title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text('Notifaction Password'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
