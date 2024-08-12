import 'package:flutter/material.dart';

import 'apple.dart';

class Cart extends ChangeNotifier{

// list of Products for sale

List<Apple> appleShop = [
  
  Apple(
  
  name: 'Apple Vision', 
  price: '4000', 
  imagePath: 'lib/images/apple_vision.png', 
  description: 'Mixed reality wearable for immersive experiences.'
  ),

  Apple(
  
  name: 'IPhone 14', 
  price: '1300', 
  imagePath: 'lib/images/IPhone_14.png', 
  description: 'Smartphone with powerful performance.'
  ),

  Apple(
  
  name: 'Apple Watch', 
  price: '500', 
  imagePath: 'lib/images/apple_watch.png', 
  description: 'Health and Connectivity, all from your wrist.'
  ),

  Apple(
  
  name: 'AirPods Pro', 
  price: '230', 
  imagePath: 'lib/images/airpods.png', 
  description: 'Modern noise-cancelling wireless earbuds.'
  ),

];

// list of items in users cart
List<Apple> userCart = [];

// get list of products items for sale
List<Apple> getAppleList() {
  return appleShop;
}

// get cart
List<Apple> getUserCart() {
  return userCart;
}
 
// adding items to the cart
void addItemToCart(Apple apple) {
  userCart.add(apple);
  notifyListeners();
}


// removing items to the cart
void removeItemFromeCart(Apple apple) {
  userCart.remove(apple);
  notifyListeners();
}
}