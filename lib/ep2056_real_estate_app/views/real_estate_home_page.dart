import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 82,
              child: Placeholder(),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 86,
        padding: EdgeInsets.only(
          bottom: 16,
          left: 16,
          right: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.lightGreenAccent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.home_filled,
                  ),
                  Gap(8),
                  Text("Home")
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.explore_outlined,
                  ),
                  Gap(8),
                  Text("Discover")
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite_outline,
                  ),
                  Gap(8),
                  Text("Favourite")
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.message_outlined,
                  ),
                  Gap(8),
                  Text(
                    "Messages",
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.person_2_outlined,
                  ),
                  Gap(8),
                  Text(
                    "Profile",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
