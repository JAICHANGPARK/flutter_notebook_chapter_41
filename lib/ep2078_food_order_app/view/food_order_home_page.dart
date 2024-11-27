import 'package:flutter/material.dart';

class FoodOrderHomePage extends StatefulWidget {
  const FoodOrderHomePage({super.key});

  @override
  State<FoodOrderHomePage> createState() => _FoodOrderHomePageState();
}

class _FoodOrderHomePageState extends State<FoodOrderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 500,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(48),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
