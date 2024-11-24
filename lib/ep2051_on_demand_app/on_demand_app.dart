import 'package:flutter/material.dart';

import 'views/on_demand_home_page.dart';

class OnDemandApp extends StatelessWidget {
  const OnDemandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnDemandHomePage(),
    );
  }
}
