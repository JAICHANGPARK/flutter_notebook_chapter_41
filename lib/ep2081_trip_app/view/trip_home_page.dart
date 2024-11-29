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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
