import 'package:basketball_counter_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballCounterApp());
}

class BasketballCounterApp extends StatelessWidget {
  const BasketballCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
