import 'package:ecommerce/login/view/sellerloginpage.dart';
import 'package:flutter/material.dart';

class SellerSignup extends StatelessWidget {
  const SellerSignup({super.key});

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
              hintText: "email",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Company name",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "License no",
            ),
          ),
          TextFormField(
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