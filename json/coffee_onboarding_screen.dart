class CoffeeOnBoardingScreen {
  String image;
  String title;
  String description;

  CoffeeOnBoardingScreen({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<CoffeeOnBoardingScreen> coffees = [
  CoffeeOnBoardingScreen(
    image: "assets/images/coffee/coffee-onboarding-3.webp",
    title: "Discover New Brews",
    description: "Discover the art of perfectly brewed coffee in every sip.",
  ),
  CoffeeOnBoardingScreen(
    image: "assets/images/coffee/coffee-onboarding-1.jpg",
    title: "Customize Your Cup",
    description: "Pick your strength, roast, and flavor the way you love it.",
  ),
  CoffeeOnBoardingScreen(
    image: "assets/images/coffee/coffee-onboarding-2.jpg",
    title: "Delivered to Your Door",
    description: "Get fresh coffee delivered fast and hassle-free.",
  ),
];
