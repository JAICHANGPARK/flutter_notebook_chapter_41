import 'package:flutter/material.dart';

class AiImgPromptDetailPage extends StatefulWidget {
  const AiImgPromptDetailPage({super.key});

  @override
  State<AiImgPromptDetailPage> createState() => _AiImgPromptDetailPageState();
}

class _AiImgPromptDetailPageState extends State<AiImgPromptDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/d6a9ac6b-68f9-48b5-988f-593d9e8e8de4/original=true,quality=90/45231417.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: SafeArea(
            child: Column(
              children: [],
            ),
          ))
        ],
      ),
    );
  }
}
