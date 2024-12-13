import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_41/ep2095_ai_img_gen/view/ai_img_start_page.dart';

void main() {
  runApp(AIImageGeneratorApp());
}


class AIImageGeneratorApp extends StatelessWidget {
  const AIImageGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AiImgStartPage(),
    );
  }
}
