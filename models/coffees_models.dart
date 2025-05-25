class CoffeesConstructors {
  final String title;
  final String image;
  final double price;
  final String description;
  final List<String> ingredients;

  CoffeesConstructors({
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.ingredients,
  });
}

List<CoffeesConstructors> hotDrinks = [
  CoffeesConstructors(
    title: "Black Coffee",
    image:
        "https://weaverscoffee.com/cdn/shop/articles/1_957x.png?v=1568421338",
    price: 1.5,
    description:
        "Black coffee is as simple as it gets, with ground coffee beans steeped in hot water, served hot. And if you want to sound fancy, you can call black coffee by its proper name: café noir.",
    ingredients: ["Coffee"],
  ),
  CoffeesConstructors(
    title: "Latte",
    image:
        "https://static.vecteezy.com/system/resources/thumbnails/049/632/997/small_2x/heart-shaped-latte-art-in-a-white-cup-with-coffee-beans-isolated-on-wooden-table-side-view-of-taiwan-baked-food-photo.jpg",
    price: 1.3,
    description:
        "As the most popular coffee drink out there, the latte consists of a shot of espresso and steamed milk with just a touch of foam. It can be ordered plain or flavored with anything from vanilla to pumpkin spice.",
    ingredients: [
      "Espresso",
      "Steamed milk",
    ],
  ),
  CoffeesConstructors(
    title: "Caramel Latte",
    image:
        "https://media.istockphoto.com/id/171380606/photo/autumn-caramel-coffee.jpg?s=612x612&w=0&k=20&c=PalAO1WRi3N2nXe1aK3l0j1JwX9PHZt4sbwIdKek1vU=",
    price: 2.0,
    description:
        "If you like lattes with a special flavor, caramel lattes may be the best option to give you an experience of the natural sweetness and creaminess of steamed milk and caramel.",
    ingredients: [
      "Espresso",
      "Steamed milk",
      "Caramel syrup",
    ],
  ),
  CoffeesConstructors(
    title: "Cappuccino",
    image:
        "https://thumbs.dreamstime.com/b/cappuccino-coffee-cup-leaf-art-foam-top-mountain-landscape-view-behind-vacation-thailand-108202041.jpg",
    price: 2.0,
    description:
        "Cappuccino is a latte made with more foam than steamed milk, often with a sprinkle of cocoa powder or cinnamon on top. Sometimes you can find variations that use cream instead of milk or ones that add flavorings as well.",
    ingredients: [
      "Espresso",
      "Steamed milk",
      "Foam",
    ],
  ),
  CoffeesConstructors(
    title: "Americano",
    image:
        "https://media.istockphoto.com/id/1030018926/photo/coffee-americano-it-made-from-espresso-and-hot-water-uk.jpg?s=612x612&w=0&k=20&c=trsNtjalA6r9eGka845eO1nYOP0yogvLWqBAg-jsBlM=",
    price: 5.0,
    description:
        "With a similar taste to black coffee, the Americano consists of an espresso shot diluted with hot water.",
    ingredients: [
      "Espresso",
      "Hot water",
    ],
  ),
  CoffeesConstructors(
    title: "Espresso",
    image:
        "https://media.istockphoto.com/id/664313320/photo/espresso-coffee-cup-with-beans-on-vintage-table.jpg?s=612x612&w=0&k=20&c=kaF8P4KuAlVhAm9zNcq5DxSimOv8w3yVQynS4dwPBHc=",
    price: 1.2,
    description:
        "An espresso shot can be served alone or used as the basis for most coffee drinks, such as latte and macchiato.",
    ingredients: ["Espresso"],
  ),
  CoffeesConstructors(
    title: "Macchiato",
    image:
        "https://media.istockphoto.com/id/1028658748/photo/caffe-latte-layered.jpg?s=612x612&w=0&k=20&c=_XW6ovSfKYi1HNlLYxEDIWjUZhUuDfJaQozxZ9AKSto=",
    price: 1.2,
    description:
        "The macchiato is another espresso-based drink that has a small amount of foam on top. It's the happy middle ground between a cappuccino and a doppio.",
    ingredients: [
      "Espresso",
      "Foam",
    ],
  ),
  CoffeesConstructors(
    title: "Mocha",
    image:
        "https://media.istockphoto.com/id/1411994205/photo/iced-mocha-coffee-with-cream-in-a-tall-glass-and-coffee-beans-portafilter-tamper-and-milk-jug.jpg?s=612x612&w=0&k=20&c=0jDyCtqzybtySK2wgnC6k-qFe3f0MekrCATudLseQLY=",
    price: 2.5,
    description:
        "For all the chocolate lovers out there, you will fall in love with a mocha. Mocha is a chocolate espresso drink with steamed milk and foam.",
    ingredients: ["Espresso", "Steamed milk", "Chocolate"],
  ),
  CoffeesConstructors(
    title: "Chai Latte",
    image:
        "https://media.istockphoto.com/id/1480359250/photo/warm-dirty-chai-latte.jpg?s=612x612&w=0&k=20&c=flDB9EoyX8NS0_FEw-1oRPQTwGXx_TXrPsDWcF8KMcQ=",
    price: 2.4,
    description:
        "If you're looking for a tasty hot drink in the middle of winter, choose a chai latte. The combination of cardamom and cinnamon gives it a wonderful flavor.",
    ingredients: ["Tea", "Milk", "Ginger", "Cardamom", "Cinnamon"],
  ),
  CoffeesConstructors(
    title: "Matcha Latte",
    image:
        "https://media.istockphoto.com/id/1325991061/photo/matcha-latte-green-milk-foam-cup-on-wood-table-at-cafe-trendy-powered-tea-trend-from-japan.jpg?s=612x612&w=0&k=20&c=a7cV9mdPwPj93BrxoFrJXEdA71RsOnXIOzVF90CYPsQ=",
    price: 1.7,
    description:
        "Matcha latte is a green, healthy coffee drink with finely crushed matcha tea and milk, offering mild sweetness, a unique flavor and a mild caffeine boost.",
    ingredients: ["Matcha powder", "Milk", "Sugar*"],
  ),
  CoffeesConstructors(
    title: "Seasonal Brew",
    image:
        "https://media.istockphoto.com/id/1209718260/photo/cold-brew-coffee-with-milk-and-ice-cubes-in-glass.jpg?s=612x612&w=0&k=20&c=ZJRnsNhnEwHPvt6-EsU2dJmNhi2hmdFq-_w56YbR648=",
    price: 1.8,
    description:
        "Seasonal coffee with different flavors such as caramel, fruit and chocolate",
    ingredients: ["Coffee"],
  ),
  CoffeesConstructors(
    title: "Black Tea",
    image:
        "https://static.vecteezy.com/system/resources/thumbnails/014/963/194/small_2x/pour-a-hot-herbal-teapot-into-a-glass-cup-teacup-and-dry-tea-leaves-in-a-wooden-spoon-and-place-it-on-a-black-wooden-table-against-a-dark-background-photo.jpg",
    price: 1.35,
    description:
        "Black tea originated in China. It is made from the leaves of a plant called Camellia and can be flavored with fruits for example. A pleasant, warm, flavorful and aromatic drink that is suitable for everyday use.",
    ingredients: ['Black Tea'],
  ),
  CoffeesConstructors(
    title: "Islatte",
    image:
        "https://thumbs.dreamstime.com/b/warm-cappuccino-latte-art-rustic-wooden-table-perfect-coffee-lovers-cafe-designs-generative-ai-steaming-white-349159868.jpg",
    price: 1.77,
    description:
        "Iced latte is a chilled coffee drink made by mixing espresso and chilled milk. It is served with ice cubes and is also known as cafè latte iced or latte on the rocks.",
    ingredients: ["Espresso", "Milk", "Ice", "Syrup"],
  ),
  CoffeesConstructors(
    title: "Islatte Mocha",
    image:
        "https://www.shutterstock.com/image-photo/ice-coffee-tall-glass-cream-600nw-2333005689.jpg",
    price: 1.67,
    description:
        "Iced latte Mocha is a combination of latte and mocha, which itself is a combination of chocolate and coffee. It gives cold drink lovers a delicious chocolate and coffee experience.",
    ingredients: ["Espresso", "Ice", "Milk", "Chocolate "],
  ),
  CoffeesConstructors(
    title: "Frapino Carame",
    image:
        "https://media.istockphoto.com/id/1443907759/photo/iced-caramel-latte-topped-with-whipped-cream-and-caramel-sauce.jpg?s=612x612&w=0&k=20&c=JRAG_zgNoE2Z54OUQW_PAFQa542KcNxR4C_ipMdQWRk=",
    price: 1.92,
    description:
        "It's a blended or better said shaken coffee with whipped cream on top. A must for hot summer days.",
    ingredients: [
      "coffee",
      "Ice",
      "Milk",
      "Caramel syrup",
      "Whipped cream*",
      "Caramel sauce"
    ],
  ),
  CoffeesConstructors(
    title: "Lemonad",
    image:
        "https://media.istockphoto.com/id/544468096/photo/lemonade-with-lemon-mint-and-ice.jpg?s=612x612&w=0&k=20&c=XkJqJVWwovEKvCJM7fY59hL_rj7WgH9v_0ZBjflugKA=",
    price: 1.92,
    description:
        "First known in Paris, this sweet, colorless, carbonated drink is made by mixing lemon juice and carbonated water.",
    ingredients: ["Lemon juice", "Sparkling water", "Honey"],
  ),
  CoffeesConstructors(
    title: "Frozen Lemonade",
    image:
        "https://media.istockphoto.com/id/1403069587/photo/lemonade-with-ice-on-table-with-lemon-trees-in-background.jpg?s=612x612&w=0&k=20&c=wwdNqJZOoc7nDpewG_RBw08ebQ_6_qb0RzfcCnctW5s=",
    price: 1.92,
    description:
        "Frozen lemonade is a refreshing summer drink that combines freshly squeezed lemon juice, ice and sweetener for a cooling, tart and sweet-tart taste sensation.",
    ingredients: ["Lemon juice", "Ice", "Sugar*"],
  ),
  CoffeesConstructors(
    title: "Orange Juice",
    image:
        "https://cdn.i-scmp.com/sites/default/files/styles/landscape/public/d8/images/canvas/2024/05/31/5b4823ce-2093-4e52-96ca-719b790db88a_a4a33943.jpg?itok=pTLJF9OM&v=1717127479",
    price: 1.56,
    description:
        "We have nothing to say about our freshly squeezed orange juice. You have to try it for yourself.",
    ingredients: ["Fresh Oranges", "Ice"],
  ),
  CoffeesConstructors(
    title: "Frapino Mocka",
    image:
        "https://media.istockphoto.com/id/681493700/photo/frappuccino-in-takeaway-cup.jpg?s=612x612&w=0&k=20&c=lA2Fj-ILerew4wgDvqsNmte5oCHXKssP9J-vdWs-J8s=",
    price: 1.92,
    description:
        "Another famous and delicious cold drink for those who prefer chocolate. Imagine the taste of a shake with chocolate and whipped cream on top.",
    ingredients: ["Coffee", "Ice", "Milk", "Cocoa", "Whipped cream*"],
  ),
];

List<CoffeesConstructors> coldDrinks = [
  CoffeesConstructors(
    title: "Iced Coffee",
    image:
        "https://t4.ftcdn.net/jpg/02/04/50/37/360_F_204503757_ybg93zEuTAA0sMjimWluAnewAGKgnjxc.jpg",
    price: 2.2,
    description:
        "A coffee with ice, typically served with a dash of milk, cream or sweetener—iced coffee is really as simple as that.",
    ingredients: ["Coffee", "Ice", "Sugar*", "Cream*"],
  ),
  CoffeesConstructors(
    title: "Iced Espresso",
    image:
        "https://media.istockphoto.com/id/1258035579/photo/fresh-ice-coffee.jpg?s=612x612&w=0&k=20&c=wtjvq9lAhNtehcvZ5Q0ZJNVT85llqUlJvO-R8wJhwxg=",
    price: 2.55,
    description:
        "Like an iced coffee, iced espresso can be served straight or with a dash of milk, cream or sweetener. You can also ice speciality espresso-based drinks like americanos, mochas, macchiatos, lattes and flat whites.",
    ingredients: ["Espresso", "Ice", "Sugar*", "Cream*"],
  ),
  CoffeesConstructors(
    title: "Cold Brew",
    image:
        "https://media.istockphoto.com/id/1072946340/photo/glass-cold-brew-coffee-with-ice-and-milk-on-black-or-dark-background.jpg?s=612x612&w=0&k=20&c=fkZIHaTmBnu23hBfjIS_T4UE_1nsoLjzzx6oNVbmQmg=",
    price: 2.2,
    description:
        "The trendiest of the iced coffee bunch, cold brew coffees are made by steeping coffee beans from anywhere between 6-36 hours, depending on how strong you would like your cold brew. Once the beans are done steeping, add cold milk or cream.",
    ingredients: ["Long steeped coffee", "Ice"],
  ),
  CoffeesConstructors(
    title: "Frappuccino",
    image:
        "https://media.istockphoto.com/id/1406237166/photo/chocolate-milkshake-served-in-a-clear-glass-on-a-dark-background-isolated-drink.jpg?s=612x612&w=0&k=20&c=cXTOeX6c4WM0_PUfEDoMsyBfQ6GCmn2wW-TeAdeYpnM=",
    price: 6.9,
    description:
        "Made famous by Starbucks, the Frappuccino is a blended iced coffee drink that’s topped with whipped cream and syrup. ",
    ingredients: ["Espresso", "Blended ice", "Whip*"],
  ),
  CoffeesConstructors(
    title: "Nitro",
    image:
        "https://media.istockphoto.com/id/1209718260/photo/cold-brew-coffee-with-milk-and-ice-cubes-in-glass.jpg?s=612x612&w=0&k=20&c=ZJRnsNhnEwHPvt6-EsU2dJmNhi2hmdFq-_w56YbR648=",
    price: 2.2,
    description:
        "A cold brew + nitrogen bubbles = a cold brew coffee with a frothy, Guinness-like consistency. (It’s poured via a nitro tap, too.",
    ingredients: ["Coffee", "Nitrogen bubbles", "Sugar*", "Cream*"],
  ),
  CoffeesConstructors(
    title: "Mazagran",
    image:
        "https://t4.ftcdn.net/jpg/10/40/67/27/360_F_1040672799_gxKBWH37hKVghE8jvrhocWtX8fDvHp7c.jpg",
    price: 4.99,
    description:
        "Mazagran coffee is a cross between iced coffee, tea and your favorite rum drink. It typically consists of espresso, lemon, sugar and (sometimes) rum.",
    ingredients: ["Coffee", "Sugar", "Lemon", "Rum*"],
  ),
  CoffeesConstructors(
    title: "Iced Latte",
    image:
        "https://media.istockphoto.com/id/1153796247/photo/iced-coffee-background.jpg?s=612x612&w=0&k=20&c=_1g6mcVyjsoJS93ez9BHDANU5HNIO09LQ3zFO1KbOG4=",
    price: 2.2,
    description:
        "A smooth espresso drink combined with chilled milk and ice, offering a refreshing and creamy taste.",
    ingredients: ["Espresso", "Milk", "Ice", "Syrup"],
  ),
  CoffeesConstructors(
    title: "Caramel Frappe",
    image:
        "https://media.istockphoto.com/id/673742908/photo/iced-caramel-latte-coffee-in-a-tall-glass.jpg?s=612x612&w=0&k=20&c=L5vH2S7jFqzOM8qGIK-iLKrUfSGGGf68ZPmR5xrdAKU=",
    price: 5.75,
    description:
        "A blended coffee drink made with espresso, caramel syrup, ice, and topped with whipped cream for a sweet, icy treat.",
    ingredients: [
      "coffee",
      "Ice",
      "Milk",
      "Caramel syrup",
      "Whipped cream*",
      "Caramel sauce"
    ],
  ),
  CoffeesConstructors(
    title: "Cold Brew Coffee",
    image:
        "https://media.istockphoto.com/id/1072946340/photo/glass-cold-brew-coffee-with-ice-and-milk-on-black-or-dark-background.jpg?s=612x612&w=0&k=20&c=fkZIHaTmBnu23hBfjIS_T4UE_1nsoLjzzx6oNVbmQmg=",
    price: 4.91,
    description:
        "A slow-steeped coffee brewed in cold water for 12–24 hours, resulting in a smooth, less acidic flavor.",
    ingredients: ["Espresso", "Milk", "Ice", "Syrup"],
  ),
  CoffeesConstructors(
    title: "Vietnamese Iced Coffee",
    image:
        "https://www.luxcafeclub.com/cdn/shop/articles/Vietnamese_Iced_Coffee_1200x1200.png?v=1706401701",
    price: 4.85,
    description:
        "A strong, sweet drink made with dark-roast coffee and sweetened condensed milk, poured over ice.",
    ingredients: [
      "coffee",
      "Ice",
      "Milk",
      "Caramel syrup",
      "Whipped cream*",
      "Caramel sauce"
    ],
  ),
  CoffeesConstructors(
    title: "Iced Coconut Coffee",
    image:
        "https://media.istockphoto.com/id/1414728002/photo/dalgona-coffee-iced-fluffy-creamy-whipped-trend-drink-with-coffee-foam-and-milk.jpg?s=612x612&w=0&k=20&c=CvjSKoDBH5BYUt6Pko2Ra265GLFORkyu6IYtbZylbW8=",
    price: 2.2,
    description:
        "A tropical twist on iced coffee, blending espresso or cold brew with creamy coconut milk and ice.",
    ingredients: [
      "Coffee",
      "Ice",
      "Coconut",
    ],
  ),
  CoffeesConstructors(
    title: "Nitro Cold Brew",
    image:
        "https://media.istockphoto.com/id/1194409397/photo/cold-brew-coffee.jpg?s=612x612&w=0&k=20&c=4-tzJOMUYXIhh5G5wZhnM7AVuBj0JpggRVxDKPOlpqE=",
    price: 5.95,
    description:
        "A velvety, nitrogen-infused cold brew coffee with a creamy texture and naturally sweet flavor, served on tap.",
    ingredients: [
      "coffee",
      "Ice",
      "Milk",
      "Caramel syrup",
      "Whipped cream*",
      "Caramel sauce"
    ],
  ),
  CoffeesConstructors(
    title: "Iced Espresso Tonic",
    image:
        "https://www.goodlifecoffee.com/cdn/shop/articles/espresso_tonic_1024x686.png?v=1723236118",
    price: 4.65,
    description:
        "A coffee with ice, typically served with a dash of milk, cream or sweetener—iced coffee is really as simple as that.",
    ingredients: [
      "coffee",
      "Ice",
      "Milk",
      "Caramel syrup",
      "Whipped cream*",
      "Caramel sauce"
    ],
  ),
  CoffeesConstructors(
    title: "Iced Americano",
    image:
        "https://media.istockphoto.com/id/1279305474/photo/pouring-fresh-milk-into-glass-of-iced-black-coffee-on-tray-with-beans-and-ground-coffee-with.jpg?s=612x612&w=0&k=20&c=jVf6kdSUn2LpwiiBQcgSxehTAP3UCs9YBivsZDgozt8=",
    price: 3.79,
    description:
        "A bold and refreshing drink made by pouring espresso over ice and adding water for a smooth finish.",
    ingredients: [
      "Coffee",
      "Ice",
      "Sugar",
    ],
  ),
  CoffeesConstructors(
    title: "Iced Matcha Lattee",
    image:
        "https://media.istockphoto.com/id/1325991061/photo/matcha-latte-green-milk-foam-cup-on-wood-table-at-cafe-trendy-powered-tea-trend-from-japan.jpg?s=612x612&w=0&k=20&c=a7cV9mdPwPj93BrxoFrJXEdA71RsOnXIOzVF90CYPsQ=",
    price: 5.99,
    description:
        "A refreshing blend of finely ground matcha green tea, chilled milk, and ice. It’s smooth, creamy, and packed with antioxidants for a naturally energizing drink.",
    ingredients: ["Coffee", "Ice", "Sugar*", "Cream*"],
  ),
];
