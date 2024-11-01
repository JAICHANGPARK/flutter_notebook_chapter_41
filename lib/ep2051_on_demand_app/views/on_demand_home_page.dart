import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(),
                  Gap(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi John Doe'),
                        Gap(4),
                        Row(
                          children: [
                            Icon(
                              HugeIcons.strokeRoundedLocation01,
                              size: 18,
                            ),
                            Gap(6),
                            Text(
                              "N.Y Bronx ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,),
              child: Text("What service do you want?"),
            ),
            Container(
              height: 52,
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300]!,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
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
