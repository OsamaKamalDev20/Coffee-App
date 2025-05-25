import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/Coffee%20App/screens/coffee_onboarding_screen.dart';
import 'package:news_app/Coffee%20App/themes/coffees_colors.dart';

class CoffeeWelcomeScreen extends StatelessWidget {
  const CoffeeWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: coffeeScaffoldBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/images/coffee/coffee-animation.json",
                height: 250,
                repeat: true,
                reverse: true,
                animate: true,
              ),
              SizedBox(height: screenHeight * 0.03),
              Text(
                "☕ Start Your Day Right",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                "Order your favorite coffee and snacks with just a tap.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => OnBoardingScreen());
                },
                child: Text("GET STARTED"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
