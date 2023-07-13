import 'package:ecommerce/login/view/sellerloginpage.dart';
import 'package:ecommerce/product/view/products.dart';
import 'package:ecommerce/signup/customersign.dart';
import 'package:ecommerce/signup/view/sellersignup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
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
                  return "enter email";
                }
              },
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "email or phone",
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "enter your password";
                }
              },
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 20),
             ElevatedButton(onPressed: ()  {
                
             Navigator.push(context, MaterialPageRoute(builder: (context) => ProductView(),));
            }, child: Text("Login")),
            TextButton(onPressed: () {
              
            }, child: Text("Forgot Password"),),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>CustomerSignup() ,));
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
      ),
    );
  }
}