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
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(

          onTap: (idx){},
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
