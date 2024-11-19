import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardCafeHomePage extends StatefulWidget {
  const CardCafeHomePage({super.key});

  @override
  State<CardCafeHomePage> createState() => _CardCafeHomePageState();
}

class _CardCafeHomePageState extends State<CardCafeHomePage> {
  List<String> tabs = [
    "My Cards",
    "Anniversary",
    "Birthday",
    "Celebration",
    "Thank You",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            padding: EdgeInsets.only(top: 72, left: 16, right: 16, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.mic),
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "cards, gift, or degisn"),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                    height: 42,
                    child: ListView.builder(
                      itemCount: tabs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      },
                    )),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular Cards",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 200,
                            child: Placeholder(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Anniversary",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 200,
                            child: Placeholder(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Thank You",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 200,
                            child: Placeholder(),
                          )
                        ],
                      ),
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
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
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
