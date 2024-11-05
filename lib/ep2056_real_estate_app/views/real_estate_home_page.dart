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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 8,
                    color: Colors.lightGreenAccent,
                  ),
                  Icon(
                    Icons.home_filled,
                  ),
                  Gap(8),
                  Text("Home")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
