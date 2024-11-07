import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  Color _accentColor = Color.fromRGBO(208, 245, 43, 1);

  List<String> _tabs = [
    "Houses",
    "Apartments",
    "Offices",
    "Community",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John Micheal",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Gap(4),
                          Container(
                            decoration: BoxDecoration(
                              color: _accentColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Seoul, KR",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Gap(4),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 14,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50]!,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                  ),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50]!,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(12),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Discover properties and find\nyour place of dreams",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300]!,
                                ),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: "Let's get started",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                  suffixIcon: Icon(Icons.mic_none),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Gap(12),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.tune,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap(24),
                    Container(
                      height: 42,
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      child: ListView.builder(
                        itemCount: _tabs.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final title = _tabs[index];
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                                color: index == 0 ? _accentColor : Colors.white,
                                border: Border.all(
                                  color: Colors.grey[500]!,
                                )),
                            child: Center(
                              child: Text(
                                title,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(16),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured properties",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "View all",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(4),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 14,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 380,
                      padding: EdgeInsets.only(left: 16),
                      child: Placeholder(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 86,
        padding: EdgeInsets.only(
          bottom: 16,
          left: 16,
          right: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.lightGreenAccent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.home_filled,
                  ),
                  Gap(8),
                  Text("Home")
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.explore_outlined,
                  ),
                  Gap(8),
                  Text("Discover")
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite_outline,
                  ),
                  Gap(8),
                  Text("Favourite")
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.message_outlined,
                  ),
                  Gap(8),
                  Text(
                    "Messages",
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    color: Colors.transparent,
                  ),
                  Spacer(),
                  Icon(
                    Icons.person_2_outlined,
                  ),
                  Gap(8),
                  Text(
                    "Profile",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
