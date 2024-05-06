import 'package:apk/models/food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // dishes
    Food(
      name: "Fried Rice",
      description:
          "Dish made from cooked rice that has been stir-fried in a wok or frying pan.",
      imagePath: "lib/images/dishes/fried_rice1.jpg",
      price: 4.99,
      category: FoodCategory.dishes,
      availableAddons: [
        Addon(name: "Chicken", price: 5.30),
        Addon(name: "Beef", price: 5.65)
      ],
    ),
    Food(
      name: "Jollof Rice",
      description:
          "The dish is typically made with long-grain rice, tomatoes, chilies, onions, spices, and sometimes other vegetables all cooked together in a single pot.",
      imagePath: "lib/images/dishes/jollof_rice.jpg",
      price: 3.75,
      category: FoodCategory.dishes,
      availableAddons: [
        Addon(name: "Cheese", price: 3.80),
        Addon(name: "Beef", price: 4.99),
        Addon(name: "Chicken", price: 5.45),
      ],
    ),

    // drinks
    Food(
        name: "Black Tea",
        description:
            "Black tea is a rich source of antioxidants and polyphenols",
        imagePath: "lib/images/drinks/black_tea.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Honey", price: 2.50),
          Addon(name: "Extra sugar", price: 2.30),
        ]),
    Food(
        name: "Green Tea",
        description:
            "A beverage rich in antioxidants, catechins, and caffeine.",
        imagePath: "lib/images/drinks/green_tea.jpg",
        price: 2.05,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Honey", price: 2.99),
          Addon(name: "Extra sugar", price: 3.5),
        ]),
    Food(
        name: "Coffee",
        description:
            "A beloved beverage brewed from roasted coffee beans, has a rich history and a global presence",
        imagePath: "lib/images/drinks/coffee.jpg",
        price: 2.00,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra shot", price: 3.5),
          Addon(name: "Extra sugar", price: 2.70),
        ]),
    Food(
        name: "Banana Orange Smoothie",
        description:
            "Smoothies are delightful and versatile drinks that combine fruits, vegetables, and other ingredients into a refreshing blend.",
        imagePath: "lib/images/drinks/smoothie.jpg",
        price: 3.00,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra milk", price: 3.50),
          Addon(name: "Honey and Extra milk", price: 4.50),
        ]),

    // snacks
    Food(
      name: "Classic cheese burger",
      description:
          "A combination of juicy beef, melted cheese, and flavorful toppings.",
      imagePath: "lib/images/snacks/cheese_burger1.jpg",
      price: 1.99,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 2.99),
        Addon(name: "Bacon", price: 3.50),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Hamburger",
      description:
          "This recipe uses ground chuck, a simple burger seasoning, and all the classic toppings.",
      imagePath: "lib/images/snacks/hamburger.jpg",
      price: 1.99,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Cheese", price: 2.99),
        Addon(name: "Ketchup", price: 3.20),
      ],
    ),
    Food(
      name: "Milky Doughnut",
      description:
          "Milky doughnuts are a delightful treat that combines the softness of doughnuts with the richness of milk.",
      imagePath: "lib/images/snacks/doughnut.jpg",
      price: 0.99,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra milky", price: 1.99),
      ],
    ),
    Food(
      name: "Shawarma",
      description:
          "Shawarma is a flavorful and popular Middle Eastern dish made with spiced meats that are stacked on a vertical rotisserie and shaved off as it rotates.",
      imagePath: "lib/images/snacks/shawarma.jpg",
      price: 1.99,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Ketchup", price: 2.99),
        Addon(name: "Beef", price: 3.50),
        Addon(name: "Chicken", price: 3.99),
      ],
    ),
  ];

  /*

  G E T T E R S

  */
  List<Food> get menu => _menu;
  /*

  O P E R A T I O N S

  */

  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in a cart

  // clear the cart

  /*

  H E L P E R S

  */

  // generate receipt

  // format double value into money

  // format list of addons into string summary
}
