import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SmartHomeMainPage extends StatefulWidget {
  const SmartHomeMainPage({super.key});

  @override
  State<SmartHomeMainPage> createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome home,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 26,
                                  ),
                                ),
                                Text(
                                  "Dream!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.settings_outlined,
                              ),
                            ),
                            Gap(6),
                            CircleAvatar(),
                          ],
                        ),
                        Gap(12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Presets",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    child: Placeholder(),
                  ),
                  Text("Overview"),
                  Container(
                    height: 52,
                    child: Placeholder(),
                  ),
                  Container(
                    height: 260,
                    child: Placeholder(),
                  ),
                  Text("Active devices"),
                  Container(
                    height: 260,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 32,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.grey[100],
                  ),
                  padding: EdgeInsets.all(6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.lightGreenAccent,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home_filled,
                            ),
                            Gap(12),
                            Text("Home")
                          ],
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      Gap(12),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.grid_view),
                      ),
                      Gap(12),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.grid_view),
                      ),
                      Gap(12),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.notifications_none),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
