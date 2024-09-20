import 'package:flutter/material.dart';

class CustomeTextfiled extends StatelessWidget {
  final String hint;
  final TextEditingController? controle;
  const CustomeTextfiled({super.key, required this.hint,this.controle,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller:controle,
              decoration: InputDecoration(
                hintText: hint,
            labelStyle: TextStyle(fontSize: 20),
                  border: InputBorder.none,
                  focusedBorder:OutlineInputBorder(
                  borderSide:BorderSide(
                    color: Colors.red,
                  )
                )

              ),
            ),
          ),
        ),



      ],
    );
  }
}
