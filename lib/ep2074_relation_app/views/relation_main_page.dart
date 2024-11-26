import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../model/relation_tab.dart';

class RelationMainPage extends StatefulWidget {
  const RelationMainPage({super.key});

  @override
  State<RelationMainPage> createState() => _RelationMainPageState();
}

class _RelationMainPageState extends State<RelationMainPage> {
  int selectedTab = 0;
  List<RelationTab> tabs = [
    RelationTab(title: "All", count: 28),
    RelationTab(title: "Branding", count: 10),
    RelationTab(title: "Website", count: 10),
    RelationTab(title: "UI/UX", count: 15),
    RelationTab(title: "Graphics", count: 90),
    RelationTab(title: "Front", count: 40),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.apps,
                    size: 32,
                  ),
                  Gap(4),
                  Text(
                    "Relatons",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  Gap(2),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.notifications),
                  ),
                  Gap(2),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              height: 160,
              margin: EdgeInsets.only(
                left: 16,
                top: 24,
                bottom: 24,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 320,
                    margin: EdgeInsets.only(
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Active Project",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "42",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "+16% last month",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(.025), spreadRadius: 4, blurRadius: 4),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TEAM MEMBERS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                child: CircleAvatar(
                                  radius: 24,
                                ),
                              ),
                              Positioned(
                                left: 32,
                                child: CircleAvatar(
                                  radius: 24,
                                ),
                              ),
                              Positioned(
                                left: 56,
                                child: CircleAvatar(
                                  radius: 24,
                                ),
                              ),
                              Positioned(
                                left: 24 * 3 + 8,
                                child: CircleAvatar(
                                  radius: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(8),
                      Text("+12 members"),
                      Gap(32),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Leads list",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Today 12 Jun, 11 43 AM")
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Latest",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 32,
              margin: EdgeInsets.all(16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedTab = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      margin: EdgeInsets.only(right: 12),
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: selectedTab == index ? Colors.black : Colors.brown[50],
                      ),
                      child: Row(
                        children: [
                          Text(
                            "${tabs[index].title}",
                            style: TextStyle(
                              color: selectedTab == index ? Colors.white : Colors.black,
                            ),
                          ),
                          if (selectedTab == index)
                            Row(
                              children: [
                                Gap(8),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Colors.tealAccent, borderRadius: BorderRadius.circular(24)),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(
                                    "${tabs[index].count}",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Placeholder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
