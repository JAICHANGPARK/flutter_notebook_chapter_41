import 'package:flutter/material.dart';

import 'vierw/makeup_home_page.dart';


void main() {
  runApp(MakeupApp());
}

class MakeupApp extends StatelessWidget {
  const MakeupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MakeupHomePage(),
    );
  }
}
