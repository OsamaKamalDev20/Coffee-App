import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Coffee%20App/controllers/coffee_controller.dart';
import 'package:news_app/Coffee%20App/themes/coffees_colors.dart';

class CoffeeCartPage extends StatelessWidget {
  final CoffeeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: coffeeScaffoldBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          "Coffees Cart",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      backgroundColor: coffeeScaffoldBackground,
      body: Obx(() {
        return Column(
          children: [
            Expanded(
              child: controller.cartItems.isEmpty
                  ? Center(
                      child: Text(
                        "Your cart is empty!",
                        style: TextStyle(
                          fontSize: 20,
                          color: coffeeHeadingColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: controller.cartItems.length,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      itemBuilder: (_, index) {
                        final coffee =
                            controller.cartItems.keys.toList()[index];
                        final quantity = controller.cartItems[coffee]!;

                        return Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: containerColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height:
                                    120, // Reduced height for better proportion
                                width:
                                    100, // Reduced width for better proportion
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(coffee.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
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
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      "\$${coffee.price}",
                                      style: TextStyle(
                                        color: coffeeSubHeadingColor,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color:
                                            coffeeButtonColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1,
                                            color: coffeeHeadingColor),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              Icons
                                                  .remove_rounded, // Changed to remove icon for consistency
                                              color: coffeeAddToWishlist,
                                              size: 24, // Consistent icon size
                                            ),
                                            onPressed: () => controller
                                                .removeFromCart(coffee),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: Text(
                                              quantity.toString(),
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: coffeeHeadingColor,
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons
                                                  .add_rounded, // Changed to add icon for consistency
                                              color: coffeeIconColor,
                                              size: 24, // Consistent icon size
                                            ),
                                            onPressed: () =>
                                                controller.addToCart(coffee),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons
                                      .delete_outline_rounded, // Changed to outline for better visibility
                                  color: Colors.red[400],
                                  size: 24,
                                ),
                                onPressed: () =>
                                    controller.removeFromCart(coffee),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                color: coffeeScaffoldBackground,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SummaryRow(
                    label: "Total Quantity",
                    value: "${controller.totalQuantity}",
                    valueColor: coffeeButtonColor,
                  ),
                  const SizedBox(height: 8),
                  SummaryRow(
                    label: "10% discount",
                    value: "\$${controller.discountedPrice.toStringAsFixed(2)}",
                    valueColor: Colors.green,
                  ),
                  const SizedBox(height: 8),
                  SummaryRow(
                    label: "Total Price",
                    value: "\$${controller.totalCartPrice.toStringAsFixed(2)}",
                    valueColor: coffeeButtonColor,
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;

  const SummaryRow({
    super.key,
    required this.label,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: coffeeHeadingColor,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}
