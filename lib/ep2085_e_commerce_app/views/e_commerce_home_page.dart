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
                    height: 160,
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
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          bottom: 8,
                          left: 20,
                          right: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          bottom: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(16),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select by Category",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('See all'),
                        ),
                      ],
                    ),
                  ),
                  Gap(12),
                  Container(
                      height: 72,
                      margin: EdgeInsets.only(left: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.white,
                                ),
                                Gap(3),
                                Text(
                                  "Blazers",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      )),
                  Gap(12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recommended Styles",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
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