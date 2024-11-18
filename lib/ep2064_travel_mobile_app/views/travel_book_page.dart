import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TravelBookPage extends StatefulWidget {
  const TravelBookPage({super.key});

  @override
  State<TravelBookPage> createState() => _TravelBookPageState();
}

class _TravelBookPageState extends State<TravelBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              padding: EdgeInsets.fromLTRB(20, 72, 20, 20),
              color: Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Icon(Icons.arrow_back),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Eiffel Tower",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Gap(8),
                        Text("France"),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Icon(Icons.favorite_outline),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Dates"),
                        TextButton(
                          onPressed: () {},
                          child: Text("Clear all"),
                        )
                      ],
                    )
                  ],
                ),
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
                ),
              ),
            ),
            height: 88,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total"),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "\$1,580",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Gap(42),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.deepOrange,
                      ),
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
