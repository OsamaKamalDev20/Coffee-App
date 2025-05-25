import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Coffee%20App/json/coffee_onboarding_screen.dart';
import 'package:news_app/Coffee%20App/themes/coffees_colors.dart';
import 'package:news_app/Coffee%20App/widgets/coffee_bottom_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: coffeeScaffoldBackground,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: coffees.length,
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = coffees.length - 1 == index;
                  });
                },
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            coffees[i].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Text(
                          coffees[i].title,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            coffees[i].description,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04,
                vertical: screenHeight * 0.02,
              ),
              child: isLastPage
                  ? _buildGetStarted()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _controller.jumpToPage(coffees.length - 1);
                          },
                          child: Text(
                            "Skip",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: _controller,
                          count: coffees.length,
                          onDotClicked: (currentIndex) {
                            _controller.animateToPage(
                              currentIndex,
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeIn,
                            );
                          },
                          effect: ExpandingDotsEffect(
                            spacing: 8.0,
                            radius: 10,
                            dotWidth: 14.0,
                            dotHeight: 14.0,
                            activeDotColor: coffeeButtonColor,
                            dotColor: coffeeButtonColor.withOpacity(.2),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text(
                            "Next",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGetStarted() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04,
        vertical: screenHeight * 0.02,
      ),
      child: SizedBox(
        width: screenWidth * .9,
        height: 55,
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => CoffeeBottomNavigationBar());
          },
          child: Text("Get Started"),
        ),
      ),
    );
  }
}
