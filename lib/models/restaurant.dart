import 'package:flutter/foundation.dart';

import 'foods.dart';

class Restaurant extends ChangeNotifier {
  List<Foods> menu = [

    // Burgers
    Foods(
      name: "Fresh Ingredients ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "assets/images/burgers/fresh-ingredients.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Beef Meat ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "assets/images/burgers/beef-meat.png",
      price: 10.89,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Burger Meal ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "assets/images/burgers/burger-meal-.png",
      price: 8.39,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Looking Burger ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "assets/images/burgers/looking-burger-.png",
      price: 5.29,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Chess Tomato ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "assets/images/burgers/fries-cheese-tomato-.png",
      price: 7.69,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    //Desserts
    Foods(
      name: 'Mojito',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/desserts/delicious-cake.png",
      price: 20.08,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Cake',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/desserts/cake.png",
      price: 17.18,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Cake Fruits',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/desserts/delicious-cake-fruits.png",
      price: 15.89,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Strawberry',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/desserts/delicious-cake-with-fruits.png",
      price: 11.29,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Delicious Desserts',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/desserts/delicious-dessert.png",
      price: 13.39,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),

    // Drinks
    Foods(
      name: "Lemon Green",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/drinks/lemon-green.png",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Strawberry",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/drinks/strawberry.png",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Apple Drinks",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/drinks/drinks.png",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Cocktail",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/drinks/cocktail.png",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Alcoholic Drinks",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/drinks/alcoholic-drinks.png",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),

    //Salads
    Foods(
      name: "Caesar salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath: "assets/images/salads/salads.png",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Caesar", price: 2.12),
        Addon(name: "Caesar", price: 2.12),
        Addon(name: "Caesar", price: 2.12),
      ],
    ),
    Foods(
      name: "Greek salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath: "assets/images/salads/saladss(1).png",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Greek", price: 2.45),
        Addon(name: "Greek", price: 2.45),
        Addon(name: "Greek", price: 2.45),
      ],
    ),
    Foods(
      name: "Fruit salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath: "assets/images/salads/salads(2).png",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Fruit", price: 6.25),
        Addon(name: "Fruit", price: 6.25),
        Addon(name: "Fruit", price: 6.25),
      ],
    ),
    Foods(
      name: "Croutons",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath: "assets/images/salads/salads(3).png",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Croutons", price: 3.18),
        Addon(name: "Croutons", price: 3.18),
        Addon(name: "Croutons", price: 3.18),
      ],
    ),
    Foods(
      name: "Potato salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath: "assets/images/salads/salads(4).png",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Potato", price: 5.02),
        Addon(name: "Potato", price: 5.02),
        Addon(name: "Potato", price: 5.02),
      ],
    ),

    //  Sides
    Foods(
      name: "Applesauce",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/sides/sides.png",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Asparagus",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/sides/sides(1).png",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Broccoli",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/sides/sides(2).png",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Cauliflower",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/sides/sides(3).png",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Coleslaw",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/sides/sides(4).png",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
  ];

  /*
  G E T T E R S
   */

List<Foods> get menuList => menu;

/*
 Operations
   */

// add to cart

// remove from cart

// get total price of cart

// get total number of item in cart

//clear cart

/*
  Helpers
   */

// generate a receipt

//format double value into money

//format list of addon into a string summary

}
