import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Coffee%20App/models/coffees_models.dart';
import 'package:news_app/Coffee%20App/screens/coffee_details_page.dart';

import '../controllers/coffee_controller.dart';
import '../themes/coffees_colors.dart';

class IcedCoffees extends StatelessWidget {
  final CoffeeController controller = Get.put(CoffeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: coffeeScaffoldBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          "Iced Coffees",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      backgroundColor: coffeeScaffoldBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.7,
          ),
          itemCount: coldDrinks.length,
          itemBuilder: (context, index) {
            final icedCoffees = coldDrinks[index];
            return Container(
              height: 150,
              width: 200,
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
                            Get.to(() =>
                                CoffeesDetailsScreen(coffees: icedCoffees));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              icedCoffees.image,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
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
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              onTap: () {
                                controller.toggleFavorite(icedCoffees);
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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          icedCoffees.title,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: coffeeHeadingColor,
                            letterSpacing: 0.8,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${icedCoffees.price.toStringAsFixed(1)}',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
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
                                  controller.addToCart(icedCoffees);
                                  ;
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
    );
  }
}
