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
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepOrange,
          
          items: [
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
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_outlined,
          ),
          label: "Workers",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.checklist,
          ),
          label: "Services",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_outlined,
          ),
          label: "Message",
        ),
      ]),
    );
  }
}
