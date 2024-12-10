import 'package:flutter/material.dart';

import 'view/beauty_main_page.dart';

void main() {
  runApp(BeautyApp(),);
}

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BeautyMainPage(),
    );
  }
}
