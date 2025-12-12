import 'package:flutter/material.dart';
import 'package:sandwich_shop/models/cart.dart';
import 'package:sandwich_shop/views/app_styles.dart';
import 'package:sandwich_shop/views/checkout_screen.dart';
import 'package:sandwich_shop/views/app_drawer.dart';

class CartScreen extends StatefulWidget {
  final Cart cart;

  const CartScreen({super.key, required this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Future<void> _navigateToCheckout() async {
    if (widget.cart.items.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Your cart is empty'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CheckoutScreen(cart: widget.cart),
      ),
    );

    if (result != null && mounted) {
      setState(() {
        widget.cart.clear();
      });

      final String orderId = result['orderId'] as String;
      final String estimatedTime = result['estimatedTime'] as String;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text("Order $orderId confirmed! Estimated time: $estimatedTime"),
          duration: const Duration(seconds: 4),
          backgroundColor: Colors.green,
        ),
      );

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart View", style: heading1),
      ),
      drawer: const AppDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.cart.items.length,
                itemBuilder: (context, index) {
                  final item = widget.cart.items[index];

                  final itemTotal =
                      widget.cart.pricingRepository.calculateTotal(
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

            Text(
              "Total: £${widget.cart.totalPrice.toStringAsFixed(2)}",
              style: heading1,
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: _navigateToCheckout,
              icon: const Icon(Icons.payment),
              label: const Text("Checkout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text("Back to Order"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
