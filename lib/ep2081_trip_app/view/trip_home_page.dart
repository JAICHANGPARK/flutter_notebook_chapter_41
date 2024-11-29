import 'package:flutter/material.dart';

class TripHomePage extends StatefulWidget {
  const TripHomePage({super.key});

  @override
  State<TripHomePage> createState() => _TripHomePageState();
}

class _TripHomePageState extends State<TripHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
