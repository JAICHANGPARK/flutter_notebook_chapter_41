import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TripHomePage extends StatefulWidget {
  const TripHomePage({super.key});

  @override
  State<TripHomePage> createState() => _TripHomePageState();
}

class _TripHomePageState extends State<TripHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 340,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.menu),
                              ),
                              Spacer(),
                              Container(
                                height: 52,
                                width: 52,
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: Icon(
                                          Icons.notifications_none,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.deepOrangeAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(12),
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Dubai",
                                style: TextStyle(),
                              ),
                              Text("Trip"),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Sep 23 - Oct 6"),
                              Text("2 Adults"),
                            ],
                          ),
                        ),
                        Container(
                          height: 52,
                          margin: EdgeInsets.only(
                            left: 16,
                          ),
                          child: Placeholder(),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 32,
            left: 24,
            right: 24,
            child: Center(
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.green,
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.headset_mic,
                      color: Colors.white,
                    ),
                    Gap(6),
                    Text(
                      "Need a Help?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
