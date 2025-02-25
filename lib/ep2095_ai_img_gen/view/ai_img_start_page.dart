import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'ai_img_home_page.dart';
import 'ai_img_template_pagfe.dart';

class AiImgStartPage extends StatelessWidget {
  const AiImgStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AiImgTemplatePage(
      child: Stack(children: [
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
                          borderRadius: BorderRadius.circular(8),
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
                        borderRadius: BorderRadius.circular(8),
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
                          borderRadius: BorderRadius.circular(8),
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
                    stops: [.7, .8, .9, 1],
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.6),
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AiImgHomePage(),
                          ),
                        );
                      },
                      child: Container(
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
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],),
    );

  }
}
