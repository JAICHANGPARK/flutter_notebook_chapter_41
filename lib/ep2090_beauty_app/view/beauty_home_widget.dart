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
            child: SingleChildScrollView(
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
                    height: 240,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 320,
                              margin: EdgeInsets.only(
                                right: 16,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300]!,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(),
                                      Gap(4),
                                      Text("Dream Walker"),
                                      Icon(
                                        Icons.verified,
                                        color: Colors.indigo,
                                        size: 16,
                                      ),
                                      Gap(4),
                                      Text("23h ago"),
                                      Spacer(),
                                      Icon(Icons.more_horiz)
                                    ],
                                  ),
                                  Text(
                                    'Best Products for Dry Winter Skin',
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                                    maxLines: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text("# skincare"),
                                      Text("# dryskin"),
                                      Text("# winter"),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        size: 18,
                                      ),
                                      Gap(4),
                                      Text("345"),
                                      Gap(12),
                                      Icon(
                                        Icons.chat_outlined,
                                        size: 18,
                                      ),
                                      Gap(4),
                                      Text("120"),
                                      Spacer(),
                                      Icon(Icons.bookmark_border),
                                      Gap(4),
                                      Text("120"),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ))
                      ],
                    ),
                  ),
                  Gap(12),
                  Container(
                    height: 180,
                    width: double.infinity,
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                    ),
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text("Now Trending"),
                        Expanded(
                          child: Wrap(
                              spacing: 16,
                              runSpacing: 16,
                              alignment: WrapAlignment.center,
                              runAlignment: WrapAlignment.center,
                              children: List.generate(
                                  5,
                                  (index) => Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 3,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [Text("#"), Text("acnetips")],
                                        ),
                                      )).toList()),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
