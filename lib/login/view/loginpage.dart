import 'package:ecommerce/login/view/sellerloginpage.dart';
import 'package:ecommerce/signup/view/sellersignup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              hintText: "email or phone",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          SizedBox(height: 20),
           ElevatedButton(onPressed: () {
            
          }, child: Text("Login")),
          TextButton(onPressed: () {
            
          }, child: Text("Forgot Password"),),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(onPressed: () {
            
          }, child: Text("Signup")),
            ],
          ),
          
          SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Are you a seller then click here!"),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SellerLogin(),));
              }, child: Text("Login")),
              
            ],
          ),
          TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SellerSignup(),));
          }, child: Text("Signup"),),
          
        ],
      ),
    );
  }
}