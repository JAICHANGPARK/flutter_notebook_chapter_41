import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SmartHomeMainPage extends StatefulWidget {
  const SmartHomeMainPage({super.key});

  @override
  State<SmartHomeMainPage> createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 24,
            child: Center(
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[100],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home_filled,
                          ),
                          Gap(12),
                          Text("Home")
                        ],
                      ),
                      padding: EdgeInsets.all(8),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.grid_view),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
