import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RelationMainPage extends StatefulWidget {
  const RelationMainPage({super.key});

  @override
  State<RelationMainPage> createState() => _RelationMainPageState();
}

class _RelationMainPageState extends State<RelationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.apps,
                    size: 32,
                  ),
                  Gap(4),
                  Text(
                    "Relatons",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  Gap(2),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.notifications),
                  ),
                  Gap(2),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              height: 160,
              margin: EdgeInsets.only(
                left: 16,
                top: 24,
                bottom: 24,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 320,
                    margin: EdgeInsets.only(
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Active Project",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "42",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "+16% last month",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [

                    ],
                  ),
                  Row(
                    children: [

                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Leads list"),
                      Text("Today 12 Jun, 11 43 AM")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
