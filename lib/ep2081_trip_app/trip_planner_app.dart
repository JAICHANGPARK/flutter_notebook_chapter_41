import 'package:flutter/material.dart';

import 'view/trip_home_page.dart';

class TripPlannerApp extends StatelessWidget {
  const TripPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TripHomePage(),
    );
  }
}
