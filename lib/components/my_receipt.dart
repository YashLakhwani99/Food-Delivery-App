// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
        top: 50,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank you for your order!"),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.90,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) => Text(
                  restaurant.displayCartReceipt(),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Estimated delivery time is : 4:10 PM"),
          ],
        ),
      ),
    );
  }
}
