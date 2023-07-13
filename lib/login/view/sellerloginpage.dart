import 'package:ecommerce/homepage/view/sellerhomepage.dart';
import 'package:ecommerce/product/view/products.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SellerLogin extends StatelessWidget {
   SellerLogin({super.key});
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
                hintText: "email ",
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "enter password";
                }
              },
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: "password"
              ),
            ),
            ElevatedButton(onPressed:() async{
              try {
                final _auth=FirebaseAuth.instance;
              final userRef=await _auth.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
              Navigator.push(context, MaterialPageRoute(builder: (context) => SellerHomepage(),));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invaid email or password"),));
              }
            },  child: Text("Login")),
          ],
        ),
      ),
    );
  }
}