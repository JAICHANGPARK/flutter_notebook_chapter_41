import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_41/ep2070_card_cafe/views/card_cafe_home_page.dart';

class CardCafeApp extends StatefulWidget {
  const CardCafeApp({super.key});

  @override
  State<CardCafeApp> createState() => _CardCafeAppState();
}

class _CardCafeAppState extends State<CardCafeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
      ),
      home: CardCafeHomePage(),
    );
  }
}
