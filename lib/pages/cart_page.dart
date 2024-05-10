import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final useCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          "Are you sure you want to clear the cart?"),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            "Cancel",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text(
                            "Yes",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(
                  Icons.delete,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    useCart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text("Cart is empty..."),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: useCart.length,
                              itemBuilder: (context, index) {
                                // get individual cart item
                                final cartItem = useCart[index];
                                // return cart tile UI
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),

              // button to pay
              MyButton(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentPage(),
                        ),
                      ),
                  text: "Go to checkout"),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      },
    );
  }
}
