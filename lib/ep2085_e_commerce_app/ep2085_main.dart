import 'package:flutter/material.dart';

import 'views/e_commerce_home_page.dart';


void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ECommerceHomePage(),
    );
  }
}
