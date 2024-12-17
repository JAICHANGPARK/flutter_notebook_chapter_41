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
              children: [
                Expanded(child: Container()),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(12, 5, 21, 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Prompt Result"),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.copy,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
