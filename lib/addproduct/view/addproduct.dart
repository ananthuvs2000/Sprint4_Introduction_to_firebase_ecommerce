import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("ShopNow"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Product Name",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Category",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Product number",
            ),
          ),
          TextFormField(decoration: InputDecoration(
            hintText: "Stock",
          ),),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Price",
            ),
          ),
          TextButton(onPressed: () {
            
          }, child: Text("Image")),
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product added"),duration: Duration(seconds: 2),));
          }, child: Text("Add"),),
        ],
      ),
    );
  }
}