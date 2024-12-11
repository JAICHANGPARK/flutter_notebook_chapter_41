import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BeautyHomeWidget extends StatefulWidget {
  const BeautyHomeWidget({super.key});

  @override
  State<BeautyHomeWidget> createState() => _BeautyHomeWidgetState();
}

class _BeautyHomeWidgetState extends State<BeautyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 272,
          color: Colors.grey[200],
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.group,
                                  ),
                                  Gap(4),
                                  Text("Social")
                                ],
                              ),
                            ),
                            Gap(8),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                  ),
                                  Gap(4),
                                  Text("Shop")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        radius: 22,
                        child: Icon(Icons.notifications_none),
                      ),
                      Gap(12),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.send_outlined),
                      )
                    ],
                  ),
                ),
                Gap(8),
                Container(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  height: 92,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                          Gap(6),
                          Text(
                            "Add Story",
                          )
                        ],
                      ),
                      Gap(12),
                      ...List.generate(
                        10,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.white,
                              ),
                              Gap(6),
                              Text(
                                "Dream ${index}",
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Gap(12),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Featured Discussions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text("Explore"),
                      Gap(4),
                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 280,
                  color: Colors.orange,
                  margin: EdgeInsets.only(
                    left: 16,
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}
