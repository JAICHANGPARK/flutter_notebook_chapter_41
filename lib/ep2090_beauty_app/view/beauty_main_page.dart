import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class BeautyMainPage extends StatefulWidget {
  const BeautyMainPage({super.key});

  @override
  State<BeautyMainPage> createState() => _BeautyMainPageState();
}

class _BeautyMainPageState extends State<BeautyMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedHome01,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
            ),
            label: "Discover",
          )
        ],
      ),
    );
  }
}
