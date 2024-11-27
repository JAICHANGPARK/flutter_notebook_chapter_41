import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                  height: 580,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 420,
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
                Gap(8),
                Expanded(
                    child: Container(
                  color: Colors.white,
                ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline,
          ),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.group,
          ),
          label: "Friends",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
          ),
          label: "More",
        )
      ]),
    );
  }
}
