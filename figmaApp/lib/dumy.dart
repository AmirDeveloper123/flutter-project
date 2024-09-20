import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductEntryScreen extends StatefulWidget {
  @override
  _ProductEntryScreenState createState() => _ProductEntryScreenState();
}

class _ProductEntryScreenState extends State<ProductEntryScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  void _submitProduct() async {
    String name = _nameController.text.trim();
    double price = double.parse(_priceController.text.trim());
    int quantity = int.parse(_quantityController.text.trim());

    // Add data to Firestore

    await FirebaseFirestore.instance.collection('produ').add({
      'name': name,
      'price': price,
      'quantity': quantity,
    });

    // Clear the text fields
    _nameController.clear();
    _priceController.clear();
    _quantityController.clear();

    // Optionally show a success message or navigate to another screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _quantityController,
              decoration: InputDecoration(labelText: 'Product Quantity'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitProduct,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
