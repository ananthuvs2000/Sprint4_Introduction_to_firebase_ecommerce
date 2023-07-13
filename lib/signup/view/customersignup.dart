import 'package:flutter/material.dart';

class CustomerSignup extends StatelessWidget {
  CustomerSignup({super.key});
  final TextEditingController _nameController=TextEditingController();
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
                  return "enter name";
                }
              },
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
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
                  return "enter password";
                }
              },
              controller: _passwordController,
              decoration: InputDecoration(
              hintText: "password",
            ),),
            SizedBox(height: 15,),
            TextButton(onPressed: () {
              
            }, child: Text("Sign In")),
          ],
        ),
      ),
    );
  }
}