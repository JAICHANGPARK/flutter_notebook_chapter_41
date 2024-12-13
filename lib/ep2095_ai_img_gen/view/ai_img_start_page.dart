import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AiImgStartPage extends StatelessWidget {
  const AiImgStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(41, 16, 68, 1),
                    Color.fromRGBO(11, 4, 20, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: -120,
              top: -140,
              bottom: 0,
              right: -120,
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Gap(160),
                        ...List.generate(
                          10,
                          (index) => Container(
                            margin: EdgeInsets.only(bottom: 16),
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
                      children: List.generate(
                        10,
                        (index) => Container(
                          margin: EdgeInsets.only(bottom: 16),
                          height: 280,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: ListView(
                      children: [
                        Gap(160),
                        ...List.generate(
                          10,
                          (index) => Container(
                            margin: EdgeInsets.only(bottom: 16),
                            height: 280,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                            ),
                          ),
                        ),
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
