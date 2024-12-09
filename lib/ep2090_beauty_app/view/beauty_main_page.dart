import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class BeautyMainPage extends StatefulWidget {
  const BeautyMainPage({super.key});

  @override
  State<BeautyMainPage> createState() => _BeautyMainPageState();
}

class _BeautyMainPageState extends State<BeautyMainPage> {
  num page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  page = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    HugeIcons.strokeRoundedHome01,
                  ),
                  Text("Home")
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  page = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.explore_outlined,
                  ),
                  Text("Discover")
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.lightGreen,
              radius: 24,
              child: Icon(Icons.add),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timelapse,
                ),
                Text("Routines")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_2_outlined,
                ),
                Text("Profile")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
