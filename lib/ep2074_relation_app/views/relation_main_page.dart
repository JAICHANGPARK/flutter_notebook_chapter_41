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
                  Text("Relatons"),
                  Spacer(),

                  CircleAvatar(
                    radius: 26,
                  ),
                  Gap(2),
                  CircleAvatar(
                    radius: 26,
                  ),
                  Gap(2),
                  CircleAvatar(
                    radius: 26,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
