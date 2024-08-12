import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            
              //Logo
            
            Padding(
              padding: const EdgeInsets.all(150.0),
              child: Image.asset(
                'lib/images/Apple_logo_black.svg.png',
                height: 100,
              ),
            ),
            
            const SizedBox(height: 5),
          
              //Title
            
            const Text(
            'Think different.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            
            const SizedBox(height: 25),
          
              //Sub Title
          
            const Text(
            'Designed to inspire. The new Apple products offer the most advanced technology in a stunning design.',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 50),
              //start new Button

              GestureDetector(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                 ),
                ),

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    ),
                
                    padding: const EdgeInsets.all(25),
                      child: Center(
                        child: const Text(
                          'Get Started', 
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            ),
                          ),
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}