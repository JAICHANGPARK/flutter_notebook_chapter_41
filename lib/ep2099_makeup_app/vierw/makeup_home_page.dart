import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MakeupHomePage extends StatefulWidget {
  const MakeupHomePage({super.key});

  @override
  State<MakeupHomePage> createState() => _MakeupHomePageState();
}

class _MakeupHomePageState extends State<MakeupHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: RadialGradient(
                  center: Alignment.bottomCenter,
                  colors: [
                    Colors.orange[400]!,
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                spacing: 16,
                children: [
                  Row(
                    spacing: 16,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.storage),
                            Text("230 Points"),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.search),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Badge(
                          child: Icon(Icons.notifications_none),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Badge(
                          child: Icon(Icons.shopping_bag_outlined),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(12),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Colors.grey[200]!,
                              )),
                          child: Column(
                            children: [],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 12,
                    children: [
                      Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recommendations"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                            ),
                          )
                        ],
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 16,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home_filled),
                Text("Home"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.storefront),
                Text("Shop"),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.qr_code_scanner),
              radius: 28,
              foregroundColor: Colors.black,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lightbulb_outline),
                Text("Forum"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_2_outlined),
                Text("Profile"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
