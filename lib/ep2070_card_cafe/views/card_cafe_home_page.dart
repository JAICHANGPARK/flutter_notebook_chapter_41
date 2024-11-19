import 'package:flutter/material.dart';

class CardCafeHomePage extends StatefulWidget {
  const CardCafeHomePage({super.key});

  @override
  State<CardCafeHomePage> createState() => _CardCafeHomePageState();
}

class _CardCafeHomePageState extends State<CardCafeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Gallary",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "MyCards",
          )
        ],
      ),
    );
  }
}
