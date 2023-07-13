import 'package:ecommerce/login/view/sellerloginpage.dart';
import 'package:flutter/material.dart';

class SellerSignup extends StatelessWidget {
   SellerSignup({super.key});
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _licencseController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("ShopNow"),
      ),
      body: Column(
        key: _formKey,
        children: [
          TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return "enter email";
              }
            },
            controller: _emailController,
            decoration: InputDecoration(
              hintText: "email",
            ),
          ),
          TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return "enter company name";
              }
            },
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Company name",
            ),
          ),
          TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return "Enter license no.";
              }
            },
            controller: _licencseController,
            decoration: InputDecoration(
              hintText: "License no",
            ),
          ),
          TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return "Enter password";
              }
            },
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: "password",
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SellerLogin(),));
          }, child: Text("Sign In"))
        ],
      ),
    
    );
  }
}