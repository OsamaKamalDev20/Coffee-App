import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Coffee%20App/pages/coffee_cart_page.dart';
import 'package:news_app/Coffee%20App/pages/coffee_home_page.dart';
import 'package:news_app/Coffee%20App/pages/coffee_wishlist_page.dart';
import 'package:news_app/Coffee%20App/themes/coffees_colors.dart';

class CoffeeBottomNavigationBar extends StatefulWidget {
  const CoffeeBottomNavigationBar({super.key});

  @override
  State<CoffeeBottomNavigationBar> createState() =>
      _CoffeeBottomNavigationBarState();
}

class _CoffeeBottomNavigationBarState extends State<CoffeeBottomNavigationBar> {
  int currentIndex = 0;

  final screens = [
    CoffeeHomeScreen(),
    CoffeeCartPage(),
    CoffeeWishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: coffeeIconColor,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          color: coffeeHeadingColor,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          color: coffeeHeadingColor.withOpacity(.5),
        ),
        unselectedItemColor: coffeeIconColor.withOpacity(.3),
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.cart,
                size: 30,
              ),
              label: 'Coffee Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_rounded,
                size: 30,
              ),
              label: 'Favorite Coffee'),
        ],
      ),
    );
  }
}
