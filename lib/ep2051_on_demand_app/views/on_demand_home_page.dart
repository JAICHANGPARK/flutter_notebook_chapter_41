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
                  const CircleAvatar(),
                  const Gap(12),
                  const Expanded(
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
                    icon: const Icon(
                      Icons.notifications_none,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text(
                "What service do you want?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(8),
            Container(
              height: 52,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[100]!,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for services",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 28,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Service Categories",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "View all",
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 120,
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                color: Colors.orange[50]!,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 24,
                                  ),
                                  Gap(8),
                                  Text("Painter"),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const Gap(42),
                    Container(
                      height: 160,
                      margin: const EdgeInsets.only(left: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 320,
                            margin: const EdgeInsets.only(right: 14),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("#PromoToday"),
                                Text("Work with our best service provider"),
                                Container(
                                  child: Text(
                                    "Book",
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Gap(24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Popular services",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "View all",
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 240,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey[100]!,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey[500]!,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
              const BottomNavigationBarItem(
                icon: Icon(
                  HugeIcons.strokeRoundedHome01,
                ),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  HugeIcons.strokeRoundedPlayList,
                ),
                label: "Jobs",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: "Workers",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.checklist,
                ),
                label: "Services",
              ),
              const BottomNavigationBarItem(
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
