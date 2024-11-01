import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class OnDemandHomePage extends StatefulWidget {
  const OnDemandHomePage({super.key});

  @override
  State<OnDemandHomePage> createState() => _OnDemandHomePageState();
}

class _OnDemandHomePageState extends State<OnDemandHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi John Doe'),
                      Row(
                        children: [
                          Icon(
                            HugeIcons.strokeRoundedLocation01,
                          ),
                          Text(
                            "N.Y Bronx ",
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.deepOrange,
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
                  HugeIcons.strokeRoundedPlayList,
                ),
                label: "Jobs",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: "Workers",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.checklist,
                ),
                label: "Services",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                ),
                label: "Message",
              ),
            ]),
      ),
    );
  }
}
