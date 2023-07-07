import 'package:ecommerce/product/view/widget/productcard.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

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
      body: StreamBuilder(builder: (context, snapshot) {
        return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: .7),
        
         itemBuilder: ( (BuildContext context, index) {
           return ProductCard();
         }) );
      },),
    );
  }
}