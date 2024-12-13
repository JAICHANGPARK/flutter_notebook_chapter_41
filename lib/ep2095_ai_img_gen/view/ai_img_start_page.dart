import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AiImgStartPage extends StatelessWidget {
  const AiImgStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: -120,
              top: 0,
              bottom: 0,
              right: -120,
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Gap(24),
                        ...List.generate(
                          10,
                          (index) => Container(
                            margin: Ed,
                            height: 280,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: ListView(
                      children: [
                        Gap(24),
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
