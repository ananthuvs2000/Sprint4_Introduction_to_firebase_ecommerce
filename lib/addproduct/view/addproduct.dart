import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  AddProduct({super.key});
  final TextEditingController _pronameController=TextEditingController();
  final TextEditingController _categoryController=TextEditingController();
  final TextEditingController _pronumberController=TextEditingController();
  final TextEditingController _stockController=TextEditingController();
  final TextEditingController _priceController=TextEditingController();
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("ShopNow"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Enter product name";
                }
              },
              controller: _pronameController,
              decoration: InputDecoration(
                hintText: "Product Name",
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Add category";
                }
              },
              controller: _categoryController,
              decoration: InputDecoration(
                hintText: "Category",
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Add product number";
                }
              },
              controller: _pronumberController,
              decoration: InputDecoration(
                hintText: "Product number",
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Add stock";
                }
              },
              controller: _stockController,
              decoration: InputDecoration(
              hintText: "Stock",
            ),),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Add price";
                }
              },
              controller: _priceController,
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
      ),
    );
  }
}