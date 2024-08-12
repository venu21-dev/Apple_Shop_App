import 'package:apple_shop_app/pages/cart_page.dart';
import 'package:apple_shop_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/bottom_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


// navigate the bottom bar
// this selected index is to control the bottom nav bar

int _selectedIndex = 0;

//this method will update  out selceted index
// when the user taps on the bottom bar

void navigateBottomBar(int index) {

  setState(() {
    
    _selectedIndex = index;

  });
}

// pages to display
final List<Widget> _pages = [

  //shop page
  const ShopPage(),

  //cart page
  const CartPage(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder (builder: (context) => IconButton (
          icon: const Padding(
            padding:  EdgeInsets.only(left: 15.0),
            child:  Icon(
              Icons.menu,
                    ),
          ),
           onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
            
            //Logo

            DrawerHeader(
              child: Image.asset(
                'lib/images/Apple_logo_black.svg.png',
                color: Colors.white,
                scale: 15,
            ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Divider(
                color: Colors.transparent,
              ),
            ),

            //other pages

          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 40.0),
            child: ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text(
                'Home',
                style: TextStyle(
                color: Colors.white),)
            
            ),
          ),

            const Padding(
            padding: EdgeInsets.only(left: 25.0,),
            child: ListTile(
              leading: Icon(Icons.info,
              color: Colors.white,),
              title: Text(
                'About',
                style: TextStyle(
                color: Colors.white),)
            
            ),
          ),
              ],

            ),
            const Padding(
            padding: EdgeInsets.only(left: 25.0, bottom: 30.0),
            child: ListTile(
              leading: Icon(Icons.logout,
              color: Colors.white,),
              title: Text(
                'logout',
                style: TextStyle(
                color: Colors.white),)
            
            ),
          ),
          ],
        ),
      ),
      body:  _pages[_selectedIndex],
    );
  }
}