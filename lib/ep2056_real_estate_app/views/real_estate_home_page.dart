import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  Color _accentColor = const Color.fromRGBO(208, 245, 43, 1);

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
              padding: const EdgeInsets.all(12),
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
                          const Text(
                            "John Micheal",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(4),
                          Container(
                            decoration: BoxDecoration(
                              color: _accentColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: const Row(
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
                      icon: const Icon(
                        Icons.notifications_none,
                      ),
                    ),
                  ),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50]!,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(12),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
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
                                child: const TextField(
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
                            const Gap(12),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300]!,
                                ),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.tune,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                      const Gap(24),
                      Container(
                        height: 42,
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: ListView.builder(
                          itemCount: _tabs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final title = _tabs[index];
                            return Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              margin: const EdgeInsets.only(right: 16),
                              decoration: BoxDecoration(
                                color: index == 0 ? _accentColor : Colors.white,
                                border: Border.all(
                                  color: Colors.grey[500]!,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Gap(16),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Featured properties",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: _accentColor,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              child: const Row(
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
                          padding: const EdgeInsets.only(left: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 340,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                margin: const EdgeInsets.only(right: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        children: [
                                          CircleAvatar(),
                                          Gap(6),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "John Micheal",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    Gap(4),
                                                    Icon(
                                                      Icons.verified,
                                                      color: Colors.teal,
                                                      size: 16,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "California, CA",
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: _accentColor,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.more_vert),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2020/02/14/22/51/chateau-4849563_1280.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(12),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black.withOpacity(.8),
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                                  child: Text(
                                                    'ID #123',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                Gap(8),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black.withOpacity(.8),
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        size: 16,
                                                        color: Colors.orangeAccent,
                                                      ),
                                                      Gap(4),
                                                      Text(
                                                        "600",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor: Colors.black.withOpacity(.7),
                                                  foregroundColor: _accentColor,
                                                  child: Icon(
                                                    Icons.favorite_outline,
                                                    size: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Spacer(),
                                            Row(
                                              children: [
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black.withOpacity(.8),
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.camera_alt_outlined,
                                                        size: 16,
                                                        color: Colors.white,
                                                      ),
                                                      Gap(4),
                                                      Text(
                                                        "3 / 26",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Elite House"),
                                              Text("\$123344"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 16,
                                              ),
                                              Text("1234 Despard Street, Atlanta, GA"),
                                            ],
                                          ),
                                          Divider(),
                                          Row(
                                            children: [],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          )),
                      const Gap(16),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Near By",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: _accentColor,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              child: const Row(
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
                          height: 240,
                          padding: const EdgeInsets.only(left: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 240,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                margin: const EdgeInsets.only(right: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2020/02/14/22/51/chateau-4849563_1280.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(12),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black.withOpacity(.8),
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                                  child: Text(
                                                    'ID #123',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                Gap(8),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black.withOpacity(.8),
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        size: 16,
                                                        color: Colors.orangeAccent,
                                                      ),
                                                      Gap(4),
                                                      Text(
                                                        "600",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor: Colors.black.withOpacity(.7),
                                                  foregroundColor: _accentColor,
                                                  child: Icon(
                                                    Icons.favorite_outline,
                                                    size: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Spacer(),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Elite House"),
                                              Text("\$123344"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 16,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "1234 Despard Street, Atlanta, GA",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 86,
        color: const Color.fromRGBO(1, 32, 27, 1),
        padding: const EdgeInsets.only(
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
                    color: _accentColor,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.home_filled,
                    color: _accentColor,
                  ),
                  const Gap(8),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: _accentColor,
                      fontSize: 12,
                    ),
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
                  const Spacer(),
                  const Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  ),
                  const Gap(8),
                  const Text(
                    "Discover",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
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
                  const Spacer(),
                  const Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  const Gap(8),
                  const Text(
                    "Favourite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
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
                  const Spacer(),
                  const Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                  const Gap(8),
                  const Text(
                    "Messages",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
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
                  const Spacer(),
                  const Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  const Gap(8),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
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
