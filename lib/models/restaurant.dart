// ignore_for_file: non_constant_identifier_names

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 399,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 39),
        Addon(name: "Bacon", price: 139),
        Addon(name: "Avocado", price: 199),
      ],
    ),
    Food(
      name: "Ultimate Bacon Burger",
      description:
          "Single pork bacon, cheddar, pickles, lettuce, red onion, tomato, jalapeño aioli, spicy wing sauce and honey-chipotle sauce.",
      imagePath: "lib/images/burgers/bacon.png",
      price: 599,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 39),
        Addon(name: "Chicken", price: 139),
        Addon(name: "Lamb", price: 179),
      ],
    ),
    Food(
      name: "Classic Beef Burger",
      description:
          "High quality beef medium to well with cheese and bacon on a multigrain bun.",
      imagePath: "lib/images/burgers/beef_burger.png",
      price: 599,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 39),
        Addon(name: "Bacon", price: 139),
        Addon(name: "Avocado", price: 199),
      ],
    ),
    Food(
      name: "Classic Hamburger",
      description:
          "Embark on a robust flavor journey with one expertly smashed tenderlion buff patty, layered with piquant gherkins and lusciously grilled onions.",
      imagePath: "lib/images/burgers/hamburger.png",
      price: 499,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 39),
        Addon(name: "Fried egg", price: 49),
        Addon(name: "Bacon", price: 119),
      ],
    ),
    Food(
      name: "Chicken Zinger Burger - Tandoori",
      description:
          "Chicken Zinger with a delicious Indian Tandoori flavour sauce.",
      imagePath: "lib/images/burgers/zinger.png",
      price: 399,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 39),
        Addon(name: "mayo", price: 49),
        Addon(name: "chicken", price: 79),
      ],
    ),
    // salads
    Food(
      name: "Cobb Salad",
      description:
          "The Cobb salad is an American garden salad typically made with chopped salad greens, tomato, bacon, chicken breast, hard-boiled eggs, avocado, chives, blue cheese and red wine vinaigrette.",
      imagePath: "lib/images/salads/cobb_salad.png",
      price: 299,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Cheese", price: 39),
        Addon(name: "Boiled eggs", price: 79),
        Addon(name: "Avocado", price: 101),
      ],
    ),
    Food(
      name: "Fattoush",
      description:
          "Fattoush is a Lebanese salad made from toasted or fried pieces of khubz combined with mixed greens and other vegetables, such as radishes and tomatoes.",
      imagePath: "lib/images/salads/fattoush.png",
      price: 349,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Chicken Tawouk", price: 239),
        Addon(name: "Falafel (3 pcs)", price: 219),
        Addon(name: "Beef lamb", price: 235),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A classic veggie salad made with lettuce, green capsicum, tomatoes, corn, olives, and jalapenos tossed in herbs and chili. Topped with fetta chese, making this perfect salad for your meal.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 199,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Falafel Nuggets", price: 139),
        Addon(name: "Cheesy Chicken Meatballs (3 pcs)", price: 179),
        Addon(name: "Potato Chilli Shots with Mayo dip", price: 101),
      ],
    ),
    Food(
      name: "Leafy Green Salad",
      description:
          "A classic  veggie salad made with fresh baby spinach, torn romaine lettuce, sliced red onion, and sliced fresh mushrooms.",
      imagePath: "lib/images/salads/leafy_green_salad.png",
      price: 199,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Fresh Fruits", price: 99),
        Addon(name: "Chopped Raw Vegetables", price: 99),
        Addon(name: "Baked Tortilla", price: 149),
      ],
    ),
    Food(
      name: "Tossed Salad",
      description:
          "Assorted lettuce, Sauteed cottage cheese, mixed bell peppers, baby corn, broccoli, cherry tomato, red cabbage, onion, black olives, and jalapenos. Topped with fresh parsley leaves along with garlic chilli yoghurt dressing.",
      imagePath: "lib/images/salads/tossed_salad.png",
      price: 499,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Parmesan Cheese", price: 39),
        Addon(name: "Black Olives", price: 79),
        Addon(name: "Hass Avocado", price: 101),
      ],
    ),
    // sides
    Food(
      name: "Fondue Mashed Potatoes",
      description:
          "Potatoes are blended with heavy cream, butter, white wine, garlic, and seasonings, then mixed with cheese.",
      imagePath: "lib/images/sides/fondue_mashed_potatoes.png",
      price: 99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Classic Club Sandwich", price: 49),
        Addon(name: "Drool Club Sandwich", price: 79),
        Addon(name: "Grilled Sandwich", price: 29),
      ],
    ),
    Food(
      name: "Fries",
      description:
          "Potato finger french fries, French fries are long, thin pieces of potato fried in oil or fat.",
      imagePath: "lib/images/sides/fries.png",
      price: 99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Peri Peri", price: 19),
        Addon(name: "Cheese", price: 49),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "A dish so classic, it's a perfect +1 for every drink in our menu.",
      imagePath: "lib/images/sides/garlic_bread.png",
      price: 99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Caramel Frappe", price: 149),
        Addon(name: "Hazelnut Cappuccino", price: 179),
        Addon(name: "Strawberry Crunch Shake", price: 129),
      ],
    ),
    Food(
      name: "Garlic Knots",
      description:
          "Our pizza dough, rolled and formed into a knot, then baked and topped with garlic butter and seasoned with Romano cheese.",
      imagePath: "lib/images/sides/garlic_knots.png",
      price: 149,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Caramel Frappe", price: 149),
        Addon(name: "Hazelnut Cappuccino", price: 179),
        Addon(name: "Strawberry Crunch Shake", price: 129),
      ],
    ),
    Food(
      name: "Mexican Corn",
      description: "Sweet, lightly charred, and juicy = delicious! ",
      imagePath: "lib/images/sides/mexican_corn.png",
      price: 139,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Mayo", price: 49),
        Addon(name: "Lime Juice", price: 79),
        Addon(name: "Grilled Sandwich", price: 29),
      ],
    ),
    // desserts
    Food(
      name: "Apple Pie",
      description:
          "Sweet apple filling along with cashew and raisins, placed inside a delicious flaky crust.",
      imagePath: "lib/images/desserts/apple_pies.png",
      price: 299,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Frappe", price: 149),
        Addon(name: "Hazelnut Cappuccino", price: 179),
        Addon(name: "Strawberry Crunch Shake", price: 129),
      ],
    ),
    Food(
      name: "Brownie",
      description:
          "Gooey & fudgy on the inside, nutty on the outside and amazingly delicious all over! Our melt-in-the-mouth Nutty Chocolate Brownie will give you serious dessert goals.",
      imagePath: "lib/images/desserts/brownie.png",
      price: 249,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Mocha Jar", price: 49),
        Addon(name: "Choco lava cake", price: 79),
        Addon(name: "Red Velvet Muffin", price: 100),
      ],
    ),
    Food(
      name: "Cheese Cake",
      description: "Made with a soft fresh cheese, eggs, and sugar.",
      imagePath: "lib/images/desserts/cheese_cake.png",
      price: 99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Almond Rocks", price: 229),
        Addon(name: "Hazelnut Rocks", price: 229),
      ],
    ),
    Food(
      name: "French Macarons",
      description:
          "Made with egg white, icing sugar, granulated sugar, and almond meal.",
      imagePath: "lib/images/desserts/french_macarons.png",
      price: 49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Frappe", price: 149),
        Addon(name: "Hazelnut Cappuccino", price: 179),
        Addon(name: "Strawberry Crunch Shake", price: 129),
      ],
    ),
    Food(
      name: "Muffins Box (2 pcs)",
      description:
          "We are sure you wont be able to stop at one, hence this box of cream cheese filled muffins is the right vhoice for you!",
      imagePath: "lib/images/desserts/muffins.png",
      price: 99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Mocha Jar", price: 49),
        Addon(name: "Choco lava cake", price: 79),
        Addon(name: "Red Velvet Muffin", price: 59),
      ],
    ),
    // drinks
    Food(
      name: "Coke",
      description: "",
      imagePath: "lib/images/drinks/coke.png",
      price: 60,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Classic Club Sandwich", price: 49),
        Addon(name: "Drool Club Sandwich", price: 79),
        Addon(name: "Grilled Sandwich", price: 29),
      ],
    ),
    Food(
      name: "Fanta",
      description: "",
      imagePath: "lib/images/drinks/fanta.png",
      price: 60,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Classic Club Sandwich", price: 49),
        Addon(name: "Drool Club Sandwich", price: 79),
        Addon(name: "Grilled Sandwich", price: 29),
      ],
    ),
    Food(
      name: "Ginger Ale",
      description: "",
      imagePath: "lib/images/drinks/ginger_ale.png",
      price: 60,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Classic Club Sandwich", price: 49),
        Addon(name: "Drool Club Sandwich", price: 79),
        Addon(name: "Grilled Sandwich", price: 29),
      ],
    ),
    Food(
      name: "RedBull",
      description: "",
      imagePath: "lib/images/drinks/redbull.png",
      price: 110,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Classic Club Sandwich", price: 49),
        Addon(name: "Drool Club Sandwich", price: 79),
        Addon(name: "Grilled Sandwich", price: 29),
      ],
    ),
    Food(
      name: "Sprite",
      description: "",
      imagePath: "lib/images/drinks/sprite.png",
      price: 60,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Classic Club Sandwich", price: 49),
        Addon(name: "Drool Club Sandwich", price: 79),
        Addon(name: "Grilled Sandwich", price: 29),
      ],
    ),
  ];

  /* 

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /* 

  O P E R A T I O N S

  */
  // user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = "Dwarka";

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameFood;
    });

    // if item already exusts, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /* 

  H E L P E R S

  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("     Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "₹${price.toInt()}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
