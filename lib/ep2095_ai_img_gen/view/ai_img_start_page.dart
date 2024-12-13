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
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Expanded(child: Container()),
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      // stops: [.7, .8, .9, 1],
                      colors: [
                        Colors.black,
                        Colors.black,

                        // Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.5),
                        // Colors.black.withOpacity(.1),
                        Colors.black.withOpacity(.1),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(
                        "Welcome to Your",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        "Creative Space",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Gap(24),
                      Text(
                        "Unleash your creativity and explore endless possibilities. "
                        "Ready to bring your vision to life?",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Gap(24),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
