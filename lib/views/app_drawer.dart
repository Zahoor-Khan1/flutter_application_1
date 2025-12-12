import 'package:flutter/material.dart';
import 'package:sandwich_shop/main.dart';
import 'package:sandwich_shop/views/cart_screen.dart';
import 'package:sandwich_shop/models/cart.dart';
import 'package:sandwich_shop/views/profile_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

@override
Widget build(BuildContext context) {
  return Drawer(
    
    child: ListView(
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Colors.green),
          child: Text(
            'Sandwich Shop',
            style: TextStyle(
              color: Colors.white,
              
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
  leading: const Icon(Icons.fastfood),
  title: const Text('Order'),
onTap: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const OrderScreen()),
  );
},
),
ListTile(
  leading: Icon(Icons.shopping_cart),
  title: const Text('Cart'),
onTap: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => CartScreen(cart: Cart()),
    ),
  );
},
),
ListTile(
  leading: Icon(Icons.person),
  title: const Text('Profile'),
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ProfileScreen(),
    ),
  );
},
),



      ],
    ),
  );
  
}
}
