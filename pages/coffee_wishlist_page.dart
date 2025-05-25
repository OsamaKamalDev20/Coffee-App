import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/coffee_controller.dart';
import '../themes/coffees_colors.dart';

class CoffeeWishListScreen extends StatelessWidget {
  final CoffeeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: coffeeScaffoldBackground,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Favorite Coffees",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Obx(() {
        if (controller.favoriteItems.isEmpty) {
          return Center(
            child: Text(
              "No favorites yet!",
              style: TextStyle(
                fontSize: 20,
                color: coffeeHeadingColor,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: controller.favoriteItems.length,
          itemBuilder: (_, index) {
            final coffee = controller.favoriteItems[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Coffee Image
                    Container(
                      height: 80, // More compact size
                      width: 80, // Square aspect ratio
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(coffee.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Coffee Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coffee.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: coffeeHeadingColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18, // Slightly smaller
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Price and Actions Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${coffee.price}",
                                style: TextStyle(
                                  color: coffeeSubHeadingColor,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              // Action Buttons
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.favorite_rounded,
                                      color: coffeeAddToWishlist,
                                      size: 24, // Consistent size
                                    ),
                                    onPressed: () =>
                                        controller.toggleFavorite(coffee),
                                  ),
                                  const SizedBox(width: 8),
                                  IconButton(
                                    icon: Icon(
                                      Icons.delete_outline_rounded,
                                      color: Colors.red[400],
                                      size: 24, // Consistent size
                                    ),
                                    onPressed: () =>
                                        controller.toggleFavorite(coffee),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
