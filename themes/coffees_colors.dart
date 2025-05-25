import 'package:flutter/material.dart';

// Coffee App UI color pallet
const Color coffeeScaffoldBackground = Color(0xFFFFF9F5); // Light coffee cream
const Color coffeeIconColor = Color(0xFF6F4E37); // Deep Coffee Brown
const Color coffeeHeadingColor = Color(0xFF3E2723); // Dark Espresso
const Color coffeeSubHeadingColor = Color(0xFF5D4037); // Mocha Brown
const Color coffeeDescriptionColor = Color(0xFF8D6E63); // Light Mocha
const Color coffeeButtonColor = Color(0xFFC67C4E); // Latte Beige
const Color coffeeAddToCartIconColor = Color(0xFF4E342E); // Bold Roast
const Color coffeeAddToWishlist = Color(0xFFB71C1C); // Deep Red (like a heart)
const Gradient gradientColor = LinearGradient(
  colors: [Color(0xFF5D4037), Color(0xFF3E2723)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
const Color containerColor =
    Color(0xFFEDE0D4); // Light Paper Beige for shadows & cards

// Coffee App UI text-styles
ThemeData get coffeeTheme => ThemeData(
      scaffoldBackgroundColor: coffeeScaffoldBackground,
      primaryColor: coffeeHeadingColor,
      iconTheme: IconThemeData(color: coffeeIconColor),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: coffeeHeadingColor,
          letterSpacing: 0.8,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: coffeeSubHeadingColor,
          letterSpacing: 0.5,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: coffeeDescriptionColor,
          height: 1.4,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: coffeeButtonColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
