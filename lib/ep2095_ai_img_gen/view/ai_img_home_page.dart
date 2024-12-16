import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'ai_img_template_pagfe.dart';

class AiImgHomePage extends StatefulWidget {
  const AiImgHomePage({super.key});

  @override
  State<AiImgHomePage> createState() => _AiImgHomePageState();
}

class _AiImgHomePageState extends State<AiImgHomePage> {
  @override
  Widget build(BuildContext context) {
    return AiImgTemplatePage(
      child: Stack(
        children: [
          Positioned(
            left: 24,
            right: 24,
            top: 32,
            bottom: 0,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "ARTIFYYY",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Gap(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Last Result Prompt",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                              ),
                            ),
                          ],
                        ),
                        Gap(16),
                        Container(
                          height: 320,
                          color: Colors.blue,
                        ),
                        Gap(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Explore Styles",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                              ),
                            ),
                          ],
                        ),
                        Gap(16),
                        Container(
                          height: 320,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home_filled,
                          ),
                          Gap(12),
                          Text(
                            "Home",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
