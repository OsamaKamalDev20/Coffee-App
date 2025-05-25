import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/coffees_models.dart';

class CoffeeController extends GetxController {
  var cartItems = <CoffeesConstructors, int>{}.obs;
  var favoriteItems = <CoffeesConstructors>[].obs;

  void addToCart(CoffeesConstructors coffee) {
    if (cartItems.containsKey(coffee)) {
      cartItems[coffee] = cartItems[coffee]! + 1;
    } else {
      cartItems[coffee] = 1;
    }

    Get.snackbar(
      'Added to Cart',
      '${coffee.title} has been added to your cart.',
      backgroundColor: Color(0xFF00C851),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void removeFromCart(CoffeesConstructors coffee) {
    if (cartItems.containsKey(coffee) && cartItems[coffee]! > 1) {
      cartItems[coffee] = cartItems[coffee]! - 1;
    } else {
      cartItems.remove(coffee);
    }

    Get.snackbar(
      'Removed from Cart',
      '${coffee.title} has been removed from your cart.',
      backgroundColor: Color(0xFFCC0000),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void toggleFavorite(CoffeesConstructors coffee) {
    if (favoriteItems.contains(coffee)) {
      favoriteItems.remove(coffee);
      Get.snackbar(
        "Removed from Favorites",
        "${coffee.title} was removed from your favorites.",
        backgroundColor: Color(0xFFCC0000),
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
      );
    } else {
      favoriteItems.add(coffee);
      Get.snackbar(
        'Added to Favorites',
        '${coffee.title} was added to your favorites.',
        backgroundColor: Color(0xFF00C851),
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
      );
    }
  }

  bool isFavorite(CoffeesConstructors coffee) {
    return favoriteItems.contains(coffee);
  }

  int getQuantity(CoffeesConstructors coffee) {
    return cartItems[coffee] ?? 0;
  }

  double get totalCartPrice {
    double total = 0.0;
    for (var entry in cartItems.entries) {
      final price = entry.key.price;
      final quantity = entry.value;

      if (price.isFinite && !price.isNaN && quantity > 0) {
        total += price * quantity;
      }
    }
    return total.isFinite ? total : 0.0;
  }

  double get discountedPrice {
    final discount = totalCartPrice * 0.8;
    return discount.isFinite ? discount : 0.0;
  }

  int get totalQuantity {
    return cartItems.values.fold(0, (sum, qty) => sum + qty);
  }
}
