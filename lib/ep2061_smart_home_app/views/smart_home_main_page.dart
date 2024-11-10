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
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.grey[100],
              ),
              child: Row(
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
