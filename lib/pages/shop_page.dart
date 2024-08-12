// ignore_for_file: prefer_const_constructors


import 'package:apple_shop_app/models/apple.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/apple_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // Add Product to cart method
  void addAppleToCart(Apple apple) {
    Provider.of<Cart>(context, listen: false).addItemToCart(apple);


  // alter the User, Product has been added to cart
  showDialog(
    context: context, 
    builder: (context) => AlertDialog(
    title: Text('Successfully added!'),
    content: Text('Check your cart.'),
    backgroundColor: Colors.white,
    
  )
  );


  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [

        //seachbar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.white, 
          borderRadius: BorderRadius.circular(10)),
        
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Search', 
              style: TextStyle(
                color: Colors.grey),
                ),
              Icon(
                Icons.search, 
              color: Colors.grey,
              ),
            ],
          ),
          ),
        
        
        //message

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('It is not a faith in technology. It is faith in people ...', style: TextStyle(color: Colors.grey[600]),),
        ),


        //hotpicks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Featured', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
              Text('See all', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue),
                ),
              ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              
              Apple apple = value.getAppleList()[index];

              return AppleTile(
                apple: apple,
                onTap: () => addAppleToCart(apple),
              );
        },
        ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25.0, right: 25.0, left: 25.0, bottom: 0),
          child: Divider(
            color: Colors.transparent,
            
          ),
        ),
      ],
    ),);
  }
}