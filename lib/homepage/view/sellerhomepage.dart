import 'package:ecommerce/addproduct/addpro.dart';
import 'package:flutter/material.dart';

class SellerHomepage extends StatelessWidget {
  const SellerHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("ShopNow"),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {
                
              }, icon: Icon(Icons.person)),
              IconButton(onPressed: () {
                
              }, icon: Icon(Icons.search)),
              IconButton(onPressed: () {
                
              }, icon: Icon(Icons.favorite)),
            ],
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              children: [
                SizedBox(width: 80,),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddProduct(),));
                  
                }, child: Text("Add Product")),
                SizedBox(width: 20,),
                TextButton(onPressed: () {
                  
                }, child: Text("View Products"),),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Center(
            child: Row(
              children: [
                 SizedBox(width: 80,),
                TextButton(onPressed: () {
                  
                }, child: Text("View Orders"),),
                SizedBox(width: 20,),
                TextButton(onPressed: () {
                  
                }, child: Text("Update Stock"),),
              ],
            ),
          ),
      
        ],
      ),
      

      
    );
  }
}