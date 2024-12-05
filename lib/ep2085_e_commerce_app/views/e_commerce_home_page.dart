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
                            child: TextField(
                              decoration: InputDecoration()
                            ),
                          ),
                        ),
                        Gap(16),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Placeholder(),
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
