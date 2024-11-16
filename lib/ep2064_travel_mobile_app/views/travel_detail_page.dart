import 'package:flutter/material.dart';

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
                children: [],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          color: Colors.white,
          surfaceTintColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                  color: Colors.grey,
                ))),
            height: 80,
            padding: EdgeInsets.all(16),
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
                            ),
                          ),
                          TextSpan(
                            text: "/person",
                          )
                        ],
                      ),
                    )
                  ],
                ),
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
