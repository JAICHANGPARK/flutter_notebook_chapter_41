import 'package:flutter/material.dart';

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
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Text("ARTIFYYY"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Icon(Icons.menu, color: Colors.white,),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
