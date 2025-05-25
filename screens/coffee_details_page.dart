import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Coffee%20App/models/coffees_models.dart';
import 'package:news_app/Coffee%20App/themes/coffees_colors.dart';

import '../controllers/coffee_controller.dart';

class CoffeesDetailsScreen extends StatefulWidget {
  final CoffeesConstructors coffees;
  const CoffeesDetailsScreen({super.key, required this.coffees});

  @override
  State<CoffeesDetailsScreen> createState() => _CoffeesDetailsScreenState();
}

class _CoffeesDetailsScreenState extends State<CoffeesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final CoffeeController controller = Get.find();
    return Scaffold(
      backgroundColor: coffeeScaffoldBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                widget.coffees.image,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                fit: BoxFit.cover,
              ),
              SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white54,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 24,
                                  color: coffeeIconColor,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.toggleFavorite(widget.coffees);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white54,
                              ),
                              child: Center(
                                child: Icon(
                                  controller.isFavorite(widget.coffees)
                                      ? Icons.favorite_rounded
                                      : Icons.favorite_border_rounded,
                                  size: 24,
                                  color: coffeeAddToWishlist,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coffees.title,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 6),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: coffeeButtonColor,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: coffeeButtonColor.withOpacity(.3), width: 1),
                  ),
                  child: Text(
                    "Price: \$${widget.coffees.price}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 4),
                Text(
                  widget.coffees.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 15),
                Text(
                  "Ingredients",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 10),
                Wrap(
                  runSpacing: 15,
                  spacing: 10,
                  children: List.generate(
                    widget.coffees.ingredients.length,
                    (index) => Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        color: coffeeButtonColor.withOpacity(.1),
                        border: Border.all(
                          color: coffeeButtonColor.withOpacity(.3),
                          width: 1.5,
                        ),
                      ),
                      child: Text(
                        "${widget.coffees.ingredients[index]}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        color: coffeeScaffoldBackground,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: coffeeButtonColor,
                    ),
                  ),
                  Text(
                    "\$${widget.coffees.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: coffeeHeadingColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 240,
              child: ElevatedButton(
                onPressed: () {
                  controller.addToCart(widget.coffees);
                },
                child: Text("ADD TO CART"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
