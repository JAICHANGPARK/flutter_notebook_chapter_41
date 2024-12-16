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
                  Gap(24),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      spacing: 24,
                      children: [
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
                        Container(
                          height: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: .2),
                            ),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            spacing: 16,
                            children: [
                              Row(
                                spacing: 8,
                                children: [
                                  Text(
                                    "Anime Style",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.deepPurple,
                                    foregroundColor: Colors.white,
                                    radius: 16,
                                    child: Icon(
                                      Icons.download,
                                      size: 18,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.deepPurple,
                                    foregroundColor: Colors.white,
                                    child: Icon(
                                      Icons.more_horiz,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ),
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
                        Container(
                          color: Colors.blue,
                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 42,
            left: 24,
            right: 24,
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                          ),
                          Gap(12),
                          Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.photo_outlined,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_2_outlined,
                      ),
                      color: Colors.white,
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
