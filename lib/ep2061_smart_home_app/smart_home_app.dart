import 'package:flutter/material.dart';

import 'views/smart_home_main_page.dart';

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomeMainPage(),
    );
  }
}
