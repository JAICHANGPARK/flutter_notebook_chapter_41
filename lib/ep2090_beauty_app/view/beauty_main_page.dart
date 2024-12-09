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
      bottomNavigationBar:
      BottomAppBar(
        child: Row(
          children: [
            Column(
              children: [
                Icon(
                  HugeIcons.strokeRoundedHome01,
                ),
                Text("Home")
              ],
            )
           ,
            Column(
              children: [
                Icon(
                  Icons.explore_outlined,
                ),
                Text("Discover")
              ],
            )

          ],
        ),
      ),
   
    );
  }
}
