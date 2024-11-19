import 'package:flutter/material.dart';

class CardCafeHomePage extends StatefulWidget {
  const CardCafeHomePage({super.key});

  @override
  State<CardCafeHomePage> createState() => _CardCafeHomePageState();
}

class _CardCafeHomePageState extends State<CardCafeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  height: 42,
                  child: Placeholder(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          onTap: (idx) {},
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Gallary",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "MyCards",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Gifts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
