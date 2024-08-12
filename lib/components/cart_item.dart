import 'package:apple_shop_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/apple.dart';

class CartItem extends StatefulWidget {
  Apple apple;
  
  CartItem({
    super.key, 
    required this.apple
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //remove item from cart
  void removeItemsFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromeCart(widget.apple);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(10)
      ),
      margin: const EdgeInsets.only(bottom: 10),

      child: ListTile(
        leading: Image.asset(widget.apple.imagePath),
        title: Text(widget.apple.name),
        subtitle: Text(widget.apple.price),
        trailing: IconButton(icon: Icon(Icons.delete, color: Colors.grey[700],), 
        onPressed: removeItemsFromCart,),
      ),
    );
  }
}