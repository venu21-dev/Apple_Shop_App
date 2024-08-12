import 'package:flutter/material.dart';
import '../models/apple.dart';

class AppleTile extends StatelessWidget {
  
  Apple apple;
  void Function()? onTap;
  AppleTile({super.key, required this.apple, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
        //Product pic
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(apple.imagePath)),

        //Desc 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(apple.description, style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
            //Product name
            Text(
              apple.name, style: 
              const TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20
              ),
              ),
          
            const SizedBox(height: 5,),
          
            //price
            Text(
              '\CHF' + apple.price, style: 
              TextStyle(
              color: Colors.grey[600]
              ),
              ),
          
              ],
            ),
          
            // Button
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[900], 
                  borderRadius: BorderRadius.circular(10)
                  ),
                child: const Icon(
                  Icons.add, 
                  color: Colors.white
                  ),
                ),
            )
              ],
            ),
          ),        
        ],
      ),
    );
  }
}