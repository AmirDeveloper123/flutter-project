import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {

  int? _selectedValue; // Holds the selected radio button value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: Text('Option 1'),
            leading: Radio<int>(
              value: 1,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value;
                  print(_selectedValue);
                });
              },
            ),
          ),
          ListTile(
            title: Text('Option 2'),
            leading: Radio<int>(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Option 3'),
            leading: Radio<int>(
              value: 3,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}