import 'package:flutter/material.dart';
import 'package:sandwich_shop/models/cart.dart';
import 'package:sandwich_shop/views/app_styles.dart';
import 'package:sandwich_shop/views/checkout_screen.dart';

class CartScreen extends StatefulWidget {
  final Cart cart;

  const CartScreen({super.key, required this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart View", style: heading1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  final item = cart.items[index];

                  // FIXED: Calculate item price safely
                  final itemTotal = cart.pricingRepository.calculateTotal(
                    quantity: item.quantity,
                    isFootlong: item.sandwich.isFootlong,
                  );

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Text(item.sandwich.name, style: heading2),
                        Text(
                          "${item.sandwich.isFootlong ? 'Footlong' : 'Six-inch'} "
                          "on ${item.sandwich.breadType.name} bread",
                          style: normalText,
                        ),
                        Text(
                          "Qty: ${item.quantity} - £${itemTotal.toStringAsFixed(2)}",
                          style: normalText,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // ------- TOTAL DISPLAY ---------
            Text(
              "Total: £${cart.totalPrice.toStringAsFixed(2)}",
              style: heading1,
            ),

            const SizedBox(height: 20),

            // ------- BACK BUTTON ----------
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text("Back to Order"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
