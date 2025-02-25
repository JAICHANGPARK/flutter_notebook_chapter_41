import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodOrderHomePage extends StatefulWidget {
  const FoodOrderHomePage({super.key});

  @override
  State<FoodOrderHomePage> createState() => _FoodOrderHomePageState();
}

class _FoodOrderHomePageState extends State<FoodOrderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 580,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Column(
                          children: [
                            Container(
                              height: 420,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(48),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                    ),
                                    Gap(8),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hi Dreamwalker ",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Seoul, Korea",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.3),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.search,
                                      ),
                                      iconColor: Colors.white,
                                      border: InputBorder.none,
                                      hintText: "Search your restaurant",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              Container(
                                height: 100,
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 16,
                                ),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 36,
                                          ),
                                          Gap(6),
                                          Text(
                                            "Dream Bab",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Gap(12),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Dine Discoveries for You",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "View All",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 16, bottom: 12),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 16),
                                        child: SizedBox(
                                          width: 250,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius: BorderRadius.circular(12)
                                                  ),
                                                ),
                                              ),
                                              Gap(8),
                                              Text(
                                                "Maui Brewing ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Gap(4),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 16,
                                                  ),
                                                  Text("4.8"),
                                                  Gap(12),
                                                  Icon(
                                                    size: 16,
                                                    Icons.location_on_outlined,
                                                  ),
                                                  Gap(8),
                                                  Text(
                                                    "2222 abcd, Town Center",
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(8),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.only(bottom: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 24,
                                  ),
                                  Gap(12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dream Walker',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Gap(4),
                                        Text("Photo and offer details"),
                                        Gap(4),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 12,
                                            ),
                                            Gap(4),
                                            Text("Seoul, Korea"),
                                            Gap(12),
                                            Text("Jun 4 at 7:32 pm"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Gap(12),
                              Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: "Friends",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: "More",
            )
          ],
        ),
      ),
    );
  }
}
