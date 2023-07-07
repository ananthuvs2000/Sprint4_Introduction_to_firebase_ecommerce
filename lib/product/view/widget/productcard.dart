import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            child: Column(
              children: [
               Image(
                  height: 100,
                  width: 100,
                  image: NetworkImage("https://m.media-amazon.com/images/I/61WzFmz9VRL._AC_UY1000_.jpg"),),
                Text("Casio for men"),
              ],
            ),
          ),
        ),
          
      ),
    );
  }
}