import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TravelDetailPage extends StatefulWidget {
  const TravelDetailPage({super.key});

  @override
  State<TravelDetailPage> createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends State<TravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Container(
                    height: 320,
                    color: Colors.blue,
                    child: SafeArea(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                      
                              ),
                              CircleAvatar()
                            ],
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
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          height: 88,
          color: Colors.white,
          surfaceTintColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                  color: Colors.grey,
                ))),
            height: 88,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Start from"),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "\$500",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: "/person",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Gap(16),
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.deepOrange,
                    ),
                    child: Center(
                      child: Text(
                        "Select Date",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
