import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.grey[100],
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                HugeIcons.strokeRoundedHome01,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                HugeIcons.strokeRoundedCalendar01,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                HugeIcons.strokeRoundedHandBag01,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.favorite_outline),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.person_2_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
