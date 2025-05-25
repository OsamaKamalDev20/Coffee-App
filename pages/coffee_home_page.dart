import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Coffee%20App/models/coffees_models.dart';
import 'package:news_app/Coffee%20App/screens/coffee_details_page.dart';
import 'package:news_app/Coffee%20App/screens/hot_coffees.dart';
import 'package:news_app/Coffee%20App/screens/iced_coffees.dart';
import 'package:news_app/Coffee%20App/themes/coffees_colors.dart';

import '../controllers/coffee_controller.dart';

class CoffeeHomeScreen extends StatelessWidget {
  final CoffeeController controller = Get.put(CoffeeController());
  final List<CoffeesConstructors> coffeeList = [];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: coffeeScaffoldBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              children: [
                // Header Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Dear Osama",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: coffeeScaffoldBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.notification_add_rounded,
                        size: 28,
                        color: coffeeIconColor,
                      ),
                    ),
                  ],
                ),

                // Search Bar
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: coffeeButtonColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        size: 24,
                        color: coffeeIconColor,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search the best coffee",
                            hintStyle: Theme.of(context).textTheme.bodyLarge,
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                          ),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: coffeeButtonColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.tune_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                // Coffee Banner
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: gradientColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/coffee/banner.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Hot Coffees
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot Coffees",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => HotCoffees());
                      },
                      child: Text(
                        "view all",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final hotCoffees = hotDrinks[index];
                      return Container(
                        height: 300,
                        width: 200,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: coffeeIconColor.withOpacity(0.15),
                              blurRadius: 12,
                              spreadRadius: 2,
                              offset: const Offset(4, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image with icons
                            Expanded(
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(
                                        () => CoffeesDetailsScreen(
                                            coffees: hotCoffees),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        hotCoffees.image,
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  // Favorite icon (top right)
                                  Positioned(
                                    top: 8,
                                    right: 6,
                                    child: Container(
                                      height: 40,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          controller.toggleFavorite(hotCoffees);
                                        },
                                        child: Icon(
                                          controller.isFavorite(hotCoffees)
                                              ? Icons.favorite_rounded
                                              : Icons.favorite_border_rounded,
                                          color: coffeeAddToWishlist,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hotCoffees.title,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: coffeeHeadingColor,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$${hotCoffees.price.toStringAsFixed(1)}',
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: coffeeSubHeadingColor,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: coffeeButtonColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            controller.addToCart(hotCoffees);
                                          },
                                          child: Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Iced Coffees
                SizedBox(height: screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Iced Coffees",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => IcedCoffees());
                      },
                      child: Text(
                        "view all",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final icedCoffees = coldDrinks[index];
                      return Container(
                        height: 300,
                        width: 200,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: coffeeIconColor.withOpacity(0.15),
                              blurRadius: 12,
                              spreadRadius: 2,
                              offset: const Offset(4, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image with icons
                            Expanded(
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(
                                        () => CoffeesDetailsScreen(
                                            coffees: icedCoffees),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        icedCoffees.image,
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  // Favorite icon (top right)
                                  Positioned(
                                    top: 8,
                                    right: 6,
                                    child: Container(
                                      height: 40,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          controller
                                              .toggleFavorite(icedCoffees);
                                        },
                                        child: Icon(
                                          controller.isFavorite(icedCoffees)
                                              ? Icons.favorite_rounded
                                              : Icons.favorite_border_rounded,
                                          color: coffeeAddToWishlist,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    icedCoffees.title,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: coffeeHeadingColor,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$${icedCoffees.price.toStringAsFixed(1)}',
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: coffeeSubHeadingColor,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 40,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: coffeeButtonColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            controller.addToCart(icedCoffees);
                                          },
                                          child: Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
