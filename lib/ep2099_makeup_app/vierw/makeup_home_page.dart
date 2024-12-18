import 'package:flutter/material.dart';

class MakeupHomePage extends StatefulWidget {
  const MakeupHomePage({super.key});

  @override
  State<MakeupHomePage> createState() => _MakeupHomePageState();
}

class _MakeupHomePageState extends State<MakeupHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 16,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home_filled),
                Text("Home"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.storefront),
                Text("Shop"),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.qr_code_scanner),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lightbulb_outline),
                Text("Forum"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_2_outlined),
                Text("Profile"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
