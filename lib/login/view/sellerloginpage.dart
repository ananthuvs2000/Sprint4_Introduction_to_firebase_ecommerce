import 'package:ecommerce/homepage/view/sellerhomepage.dart';
import 'package:ecommerce/product/view/products.dart';
import 'package:flutter/material.dart';

class SellerLogin extends StatelessWidget {
  const SellerLogin({super.key});

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
              hintText: "email ",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "password"
            ),
          ),
          ElevatedButton(onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductView(),));
          },  child: Text("Login")),
        ],
      ),
    );
  }
}