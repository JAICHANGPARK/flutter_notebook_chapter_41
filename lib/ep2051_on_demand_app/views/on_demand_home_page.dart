import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class OnDemandHomePage extends StatefulWidget {
  const OnDemandHomePage({super.key});

  @override
  State<OnDemandHomePage> createState() => _OnDemandHomePageState();
}

class _OnDemandHomePageState extends State<OnDemandHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            HugeIcons.strokeRoundedHome01,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            HugeIcons.strokeRoundedPlayList,
          ),
          label: "Jobs",
        )
      ]),
    );
  }
}
