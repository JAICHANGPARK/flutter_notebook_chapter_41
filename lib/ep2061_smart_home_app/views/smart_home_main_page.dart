import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SmartHomeMainPage extends StatefulWidget {
  const SmartHomeMainPage({super.key});

  @override
  State<SmartHomeMainPage> createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  ValueNotifier<int> tabIndex = ValueNotifier(0);
  List<String> tabs = ["Out of home", "Work time", "Bedtime", "Cleaning"];

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
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 48,
                    padding: EdgeInsets.only(left: 16),
                    child: ValueListenableBuilder(
                      valueListenable: tabIndex,
                      builder: (context, value, _) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                tabIndex.value = index;
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                margin: EdgeInsets.only(right: 8),
                                decoration: ShapeDecoration(
                                  color: value == index ? Colors.lightGreenAccent : Colors.grey[100]!,
                                  shape: StadiumBorder(),
                                ),
                                child: Center(
                                  child: Text(
                                    "${tabs[index]}",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Overview",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Gap(12),
                                Container(
                                  height: 52,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.grey[100],
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "12",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28,
                                                ),
                                              ),
                                              Gap(6),
                                              Text(
                                                "Total\ndevices",
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Gap(6),
                                      Expanded(
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.grey[100],
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "3",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28,
                                                ),
                                              ),
                                              Gap(6),
                                              Text(
                                                "Active\ndevices",
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Gap(6),
                                      Expanded(
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.grey[100],
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "5",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28,
                                                ),
                                              ),
                                              Gap(6),
                                              Text(
                                                "Presets",
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(8),
                            Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            padding: EdgeInsets.all(12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Temperature",style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                    ),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.lightGreenAccent,
                                                      radius: 24,
                                                      child: Icon(Icons.thermostat),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "+22°C",
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Gap(4),
                                        Expanded(
                                          child: Placeholder(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(4),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Placeholder(),
                                        ),
                                        Gap(4),
                                        Expanded(
                                          child: Placeholder(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(20),
                            Text(
                              "Active devices",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              height: 260,
                              child: Placeholder(),
                            ),
                          ],
                        ),
                      ),
                    ),
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
