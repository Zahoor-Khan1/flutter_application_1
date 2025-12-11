import 'package:flutter/material.dart';
import 'package:sandwich_shop/views/app_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: heading1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [TextField(
  decoration: const InputDecoration(labelText: "Name"),
  onChanged: (value) {
    setState(() => name = value);
  },
),
const SizedBox(height: 20),

TextField(
  decoration: const InputDecoration(labelText: "Email"),
  onChanged: (value) {
    setState(() => email = value);
  },
),
const SizedBox(height: 30),

