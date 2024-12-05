import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ECommerceHomePage extends StatefulWidget {
  const ECommerceHomePage({super.key});

  @override
  State<ECommerceHomePage> createState() => _ECommerceHomePageState();
}

class _ECommerceHomePageState extends State<ECommerceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 52,
                    margin: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Search here...",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  child: Icon(
                                    Icons.search,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Gap(16),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite_outline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          bottom: 0,
                          left: 32,
                          right: 32,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          bottom: 24,
                          left: 20,
                          right: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[10],
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          bottom: 32,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Gap(16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text("Select by Category"),
                        TextButton(
                          onPressed: () {},
                          child: Text('See all'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 62,
                    margin: EdgeInsets.only(left: 16),
                    child: Placeholder(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text("Recommended Styles"),
                        TextButton(
                          onPressed: () {},
                          child: Text('See all'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Placeholder(),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
