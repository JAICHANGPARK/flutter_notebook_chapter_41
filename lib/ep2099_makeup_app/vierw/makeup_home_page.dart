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
          spacing: 16,
          children: [
            Column(
              children: [
                Icon(Icons.home_filled),
                Text("Home"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.home_filled),
                Text("Home"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
