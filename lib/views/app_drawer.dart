import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer();
  }
}
@override
Widget build(BuildContext context) {
  return Drawer(
    
    child: ListView(
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.green),
          child: Text(
            'Sandwich Shop',
            style: TextStyle(
              color: Colors.white,
              
              fontSize: 24,
            ),
          ),
        ),
      ],
    ),
  );
  
}
