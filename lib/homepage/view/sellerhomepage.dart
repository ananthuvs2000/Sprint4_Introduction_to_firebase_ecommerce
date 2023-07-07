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
      body: Column(
        children: [
          Text("Items on shop",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Container(
            height: 200,
            width: 200,
            child: Column(
              children: [
                
              ],
            ),
          )
        ],
      ),

      
    );
  }
}