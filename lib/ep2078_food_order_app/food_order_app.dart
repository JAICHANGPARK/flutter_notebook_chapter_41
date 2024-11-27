import 'package:flutter/material.dart';

import 'view/food_order_home_page.dart';


class FoodOrderApp extends StatefulWidget {
  const FoodOrderApp({super.key});

  @override
  State<FoodOrderApp> createState() => _FoodOrderAppState();
}

class _FoodOrderAppState extends State<FoodOrderApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodOrderHomePage(),
    );
  }
}
